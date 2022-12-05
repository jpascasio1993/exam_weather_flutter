import 'package:drift/drift.dart';
import 'package:exam_weather_flutter/data/domain/result/result.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';

class WeatherRepository extends IWeatherRepository {
  WeatherRepository({required super.weatherDao, required super.favoritesDao, required super.weatherService});

  @override
  Stream<Result<Weather>> getWeather(int id) {
    return weatherDao.customSelect(
        'SELECT weathers.id, weathers.city, weathers.status, weathers.temp_min, weathers.temp_max, weathers.`temp`, (CASE WHEN favs.weather_id IS NULL THEN FALSE ELSE TRUE END) as fav from weathers left join (SELECT * from favorites) as favs on favs.weather_id = weathers.id where weathers.id = ?',
        variables: [Variable.withInt(id)],
        readsFrom: {weatherDao.weathers, favoritesDao.favorites}).watchSingle().map((event) {
      final result = event.data;
      result['fav'] = result['fav'] == 1;
      return LocalWeatherDTO.fromJson(result);
    }).map((event) => Result.success(Weather.fromJson(event.toJson())));
  }

  @override
  Future<Result<Weather>> getWeatherFromRemote(int id) async {
    try {
      final weatherDTO = await weatherService.getWeather(id);
      final weather = Weather(
          id: weatherDTO.id,
          city: weatherDTO.city,
          status: weatherDTO.weather.isEmpty ? 'N/A' : weatherDTO.weather[0].main,
          temp: weatherDTO.temp.temp,
          tempMin: weatherDTO.temp.tempMin,
          tempMax: weatherDTO.temp.tempMax,
          favorite: await favoritesDao.isFavorite(id));
      final localWeatherDTO = LocalWeatherDTO.fromJson(weather.toJson());

      await weatherDao.insertWeathers([localWeatherDTO]);
      return Result.success(weather);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Stream<List<Weather>> getWeathers() {
    return weatherDao.customSelect(
        'SELECT weathers.id, weathers.city, weathers.status, weathers.temp_min, weathers.temp_max, weathers.`temp`, (CASE WHEN favs.weather_id IS NULL THEN FALSE ELSE TRUE END) as fav from weathers left join (SELECT * from favorites) as favs on favs.weather_id = weathers.id',
        readsFrom: {weatherDao.weathers, favoritesDao.favorites}).watch().map((rows) {
      return rows.map((row) {
        final result = row.data;
        result['fav'] = result['fav'] == 1;
        return LocalWeatherDTO.fromJson(row.data);
      });
    }).map((dtos) => dtos.map((e) => e.toDomain()).toList());
  }

  @override
  Future<Result> setFavorite(int id, bool favorite) async {
    try {
      if (favorite) {
        await favoritesDao.setFavorite(id);
      } else {
        await favoritesDao.removeFavorite(id);
      }
      return const Result.success(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result> updateLocalWeathers(List<int> ids) async {
    try {
      final weatherDTO = await weatherService.getWeathers(ids.join(','));
      final result = weatherDTO.weathers
          .map((weather) => LocalWeatherDTO(
                id: weather.id,
                city: weather.city,
                status: weather.weather.isEmpty ? 'N/A' : weather.weather[0].main,
                temp: weather.temp.temp,
                tempMin: weather.temp.tempMin,
                tempMax: weather.temp.tempMax,
              ))
          .toList();

      await weatherDao.insertWeathers(result);
      return const Result.success(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
