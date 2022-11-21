import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_event.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(const WeatherState()) {
    on<WeatherEvent>((event, emit) {
      event.when(getWeatherFromRemote: (id) {

      }, getWeather: (id) {

      });
    });
  }
}
