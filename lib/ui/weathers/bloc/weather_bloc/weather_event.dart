import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.freezed.dart';

@freezed
class WeatherEvent with _$WeatherEvent {

  const factory WeatherEvent.getWeatherFromRemote({required int id}) = _WeatherEventGetFromRemote;

  const factory WeatherEvent.getWeather({required int id}) = _WeatherEventGetFromLocal;
}
