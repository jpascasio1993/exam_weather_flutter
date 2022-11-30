import 'package:exam_weather_flutter/data/domain/request_state/request_state.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_details_state.freezed.dart';

@freezed
class WeatherDetailsState with _$WeatherDetailsState {
  const factory WeatherDetailsState(
      {Weather? weather,
      @Default(RequestState<Weather>.init()) RequestState<Weather> requestState}) = _WeatherDetailsState;
}
