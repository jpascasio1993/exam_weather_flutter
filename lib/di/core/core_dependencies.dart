import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/database/dao/favorites_dao.dart';
import 'package:exam_weather_flutter/data/database/dao/weather_dao.dart';
import 'package:exam_weather_flutter/data/database/database.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/weather_repository.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';
import 'package:exam_weather_flutter/di/i_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreConfiguration implements ICoreDependencies {

  @lazySingleton
  @override
  Dio getDio({@Named(API_BASE_URL) required String baseUrl, @Named(API_KEY) required String apiKey}) {
    Dio dio = Dio();
    dio.options.connectTimeout = 60000;
    dio.options.receiveTimeout = 60000;
    dio.options.responseType = ResponseType.json;
    dio.options.contentType = 'application/json';
    dio.options.followRedirects = false;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({
          'units': 'metric',
          'appid': apiKey
        });
        return handler.next(options);
      },
    ));
    return dio;
  }

  @singleton
  @override
  AppDatabase getAppDatabase() => AppDatabase();

  @lazySingleton
  @override
  WeatherDao weatherDao(AppDatabase appDatabase) => WeatherDao(appDatabase);

  @lazySingleton
  @override
  FavoritesDao favoritesDao(AppDatabase appDatabase) => FavoritesDao(appDatabase);

  @prod
  @lazySingleton
  @override
  WeatherService weatherService({required Dio dio,
    @Named(API_BASE_URL) required String baseUrl}) => WeatherService(dio, baseUrl: baseUrl);

  @prod
  @lazySingleton
  @override
  IWeatherRepository weatherRepository({required WeatherDao weatherDao, required FavoritesDao favoritesDao, required WeatherService weatherService}) =>
      WeatherRepository(weatherDao: weatherDao, favoritesDao: favoritesDao, weatherService: weatherService);
}