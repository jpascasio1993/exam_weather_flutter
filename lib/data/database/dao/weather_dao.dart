import 'package:drift/drift.dart';
import 'package:exam_weather_flutter/data/database/database.dart';
import 'package:exam_weather_flutter/data/database/tables.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';

part 'weather_dao.g.dart';

@DriftAccessor(tables: [Weathers])
class WeatherDao extends DatabaseAccessor<AppDatabase> with _$WeatherDaoMixin {
  WeatherDao(AppDatabase db) : super(db);

  Future<bool> insertWeathers(List<LocalWeatherDTO> weatherList) {
    final mappedWeatherList = weatherList
        .map((e) => WeathersCompanion(
            id: Value(e.id),
            tempMin: Value(e.tempMin),
            tempMax: Value(e.tempMax),
            temp: Value(e.temp),
            status: Value(e.status),
            favorite: Value(e.favorite),
            city: Value(e.city)))
        .toList();
    return transaction(() async {
      await batch((batch) {
        batch.insertAll(weathers, mappedWeatherList, mode: InsertMode.replace);
      });
    }).then((_) => true);
  }

  Stream<List<LocalWeatherDTO>> getWeathers() => customSelect(
          'SELECT weathers.id, weathers.city, weathers.status, weathers.temp_min, weathers.temp_max, weathers.`temp`, (CASE WHEN favs.weatherId IS NULL THEN 0 ELSE 1 END) as fav from weathers left join (SELECT * from favorites) as favs on favs.weatherId = weathers.id',
          readsFrom: {weathers}).watch().map((rows) {
        return rows.map((row) => LocalWeatherDTO.fromJson(row.data)).toList();
      });

  Stream<LocalWeatherDTO> getWeather(int id) => customSelect(
          'SELECT weathers.id, weathers.city, weathers.status, weathers.temp_min, weathers.temp_max, weathers.`temp`, (CASE WHEN favs.weatherId IS NULL THEN 0 ELSE 1 END) as fav from weathers left join (SELECT * from favorites) as favs on favs.weatherId = weathers.id where weathers.id = ?',
          variables: [Variable.withInt(id)],
          readsFrom: {weathers}).watchSingle().map((event) => LocalWeatherDTO.fromJson(event.data));

  Future<bool> isFavorite(int id) => customSelect(
      'SELECT (CASE WHEN favorites.weatherId IS NULL THEN 0 ELSE 1 END) as fav from favorites where weatherId = ?',
      variables: [Variable.withInt(id)],
      readsFrom: {weathers}).getSingle().then((row) => row.read('fav'));
}
