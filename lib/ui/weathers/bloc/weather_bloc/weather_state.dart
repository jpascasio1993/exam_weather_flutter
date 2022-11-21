import 'package:exam_weather_flutter/data/domain/request_state/request_state.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState(
      {@Default([]) List<Weather> weathers,
      @Default(RequestState<List<Weather>>.init()) RequestState<List<Weather>> requestState}) = _WeatherState;
}
