import 'package:dio/dio.dart';
import 'package:exam_weather_flutter/data/domain/remote_group_weather_dto.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/remote/weather_dto.dart';
import 'package:retrofit/http.dart';

part 'weather_service.g.dart';

@RestApi()
abstract class WeatherService {
  factory WeatherService(Dio dio, {required String baseUrl}) = _WeatherService;

  @GET('/data/2.5/group')
  Future<RemoteGroupWeatherDTO> getWeathers(@Query('id') String cityIds);

  @GET('/data/2.5/weather')
  Future<WeatherDTO> getWeather(@Query('id') int cityId);
}
