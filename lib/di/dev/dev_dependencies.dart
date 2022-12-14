import 'package:exam_weather_flutter/di/i_dependencies.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DevDependencies implements IDependencies {

  @dev
  @singleton
  @Named(ENV_URL)
  @override
  String environment() => 'dev';

  @dev
  @singleton
  @Named(API_KEY)
  @override
  String weatherApiKey() => '351ab5c2ef3ce4269f321d39214aa5ca';

  @dev
  @singleton
  @Named(API_BASE_URL)
  @override
  String baseApiUrl() => 'https://api.openweathermap.org';
}