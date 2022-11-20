import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';
import 'package:exam_weather_flutter/di/i_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
 abstract class ProdDependencies implements IDependencies {

  @prod
  @singleton
  @Named(ENV_URL)
  @override
  String environment() => 'prod';

  @prod
  @singleton
  @Named(API_KEY)
  @override
  String weatherApiKey() => '351ab5c2ef3ce4269f321d39214aa5ca';

  @prod
  @singleton
  @Named(API_BASE_URL)
  @override
  String baseApiUrl() => 'https://api.openweathermap.org';

  @prod
  @lazySingleton
  @override
  WeatherService weatherService({required Dio dio,
    @Named(API_BASE_URL) required String baseUrl}) => WeatherService(dio, baseUrl: baseUrl);
}