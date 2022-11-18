import 'package:exam_weather_flutter/data/domain/remote_group_weather_dto.dart';
import 'package:exam_weather_flutter/data/domain/weatherDTO/weather_dto.dart';
import 'package:retrofit/http.dart';

mixin WeatherService {
  @GET('/data/2.5/group')
  Future<RemoteGroupWeatherDTO> getWeathers(@Query('id') String cityIds);

  @GET('/data/2.5/weather')
  Future<WeatherDTO> getWeather(@Query('id') int cityId);
}
