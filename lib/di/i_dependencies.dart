import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/database/dao/favorites_dao.dart';
import 'package:exam_weather_flutter/data/database/dao/weather_dao.dart';
import 'package:exam_weather_flutter/data/database/database.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';

const ENV_URL = 'env_url';
const API_BASE_URL = 'api_base_url';
const API_KEY = 'api_key';

abstract class ICoreDependencies {
  Dio getDio({required String baseUrl, required String apiKey});
  AppDatabase getAppDatabase();
  WeatherService weatherService({required Dio dio, required String baseUrl});
  WeatherDao weatherDao(AppDatabase appDatabase);
  FavoritesDao favoritesDao(AppDatabase appDatabase);
  IWeatherRepository weatherRepository({required WeatherDao weatherDao, required FavoritesDao favoritesDao, required WeatherService weatherService});
}

abstract class IDependencies {
  String baseApiUrl();
  String weatherApiKey();
  String environment();
}