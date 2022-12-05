import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.freezed.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeathers() = _WeatherEventGetWeathers;
  const factory WeatherEvent.setFavorite({required int id, required bool isFavorite}) = _WeatherEventSetFavorite;
  const factory WeatherEvent.updateWeathers({required List<Weather> weathers}) = _WeatherEventUpdateWeathers;
  const factory WeatherEvent.getWeathersFromRemote() =_WeatherEventGetWeathersFromRemote;
}
