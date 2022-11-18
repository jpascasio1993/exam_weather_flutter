import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/domain/remote_group_weather_dto.dart';
import 'package:exam_weather_flutter/data/domain/weatherDTO/weather_dto.dart';
import 'package:exam_weather_flutter/data/services/weather_service.dart';
import 'package:retrofit/http.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://google.com')
abstract class RestClient with WeatherService {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;
}