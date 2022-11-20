import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';

const ENV_URL = 'env_url';
const API_BASE_URL = 'api_base_url';
const API_KEY = 'api_key';

abstract class ICoreDependencies {
  Dio getDio({required String baseUrl, required String apiKey});
}

abstract class IDependencies {
  String baseApiUrl();
  String weatherApiKey();
  String environment();
  WeatherService weatherService({required Dio dio, required String baseUrl});
}