import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_details_event.freezed.dart';

@freezed
class WeatherDetailsEvent with _$WeatherDetailsEvent {

  const factory WeatherDetailsEvent.getWeatherFromRemote({required int id}) = _WeatherDetailsEventGetFromRemote;

  const factory WeatherDetailsEvent.updateWatchedWeather({required Weather weather}) = _WeatherDetailsEventUpdateWatchedWeather;

  const factory WeatherDetailsEvent.error({required Exception exception}) = _WeatherDetailsEventError;

  const factory WeatherDetailsEvent.setFavorite({required int id, required bool isFavorite}) = _WeatherDetailsEventSetFavorite;
}
