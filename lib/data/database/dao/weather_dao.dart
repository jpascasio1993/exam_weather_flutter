
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
}
