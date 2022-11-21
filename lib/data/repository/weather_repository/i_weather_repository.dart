import 'package:exam_weather_flutter/data/database/dao/favorites_dao.dart';
import 'package:exam_weather_flutter/data/database/dao/weather_dao.dart';
import 'package:exam_weather_flutter/data/domain/result/result.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';

abstract class IWeatherRepository {
  WeatherDao weatherDao;
  FavoritesDao favoritesDao;
  WeatherService weatherService;

  IWeatherRepository({required this.weatherDao, required this.favoritesDao, required this.weatherService});

  Stream<List<Weather>> getWeathers();

  Future<Result<Weather>> getWeatherFromRemote(int id);

  Stream<Result<Weather>> getWeather(int id);

  Future<Result> updateLocalWeathers(List<int> ids);

  Future<Result> setFavorite(int id, bool favorite);
}
