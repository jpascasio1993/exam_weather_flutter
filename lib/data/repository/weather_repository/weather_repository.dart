import 'package:exam_weather_flutter/data/domain/result/result.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';

class WeatherRepository extends IWeatherRepository {
  WeatherRepository({required super.weatherDao, required super.favoritesDao, required super.weatherService});

  @override
  Stream<Result<Weather>> getWeather(int id) {
    return weatherDao.getWeather(id).map((event) => Result.success(Weather.fromJson(event.toJson())));
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
          favorite: await weatherDao.isFavorite(id));
      final localWeatherDTO = LocalWeatherDTO.fromJson(weather.toJson());

      await weatherDao.insertWeathers([localWeatherDTO]);
      return Result.success(weather);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Stream<List<Weather>> getWeathers() {
    return weatherDao.getWeathers().map((dtos) => dtos.map((e) => e.toDomain()).toList());
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
      final weatherDTO = await weatherService.getWeathers(ids.join(","));
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
