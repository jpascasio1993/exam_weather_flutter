import 'dart:async';

import 'package:exam_weather_flutter/data/domain/request_state/request_state.dart';
import 'package:exam_weather_flutter/data/domain/result/result.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_details_bloc/weather_details_event.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_details_bloc/weather_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherDetailsBloc extends Bloc<WeatherDetailsEvent, WeatherDetailsState> {
  final IWeatherRepository weatherRepository;
  late final StreamSubscription<Result<Weather>>? _weatherSubscription;

  WeatherDetailsBloc({required this.weatherRepository}) : super(const WeatherDetailsState()) {
    on<WeatherDetailsEvent>((event, emit) async {
      await event.when(getWeatherFromRemote: (id) async {
        subscribeWeather(id);
        emit(state.copyWith(requestState: const RequestState.loading()));
        final items = await weatherRepository.getWeatherFromRemote(id);
        items.when(
            success: (data) => emit(state.copyWith(requestState: RequestState<Weather>.success(data))),
            error: (exception) => RequestState<Weather>.error(exception));
      }, updateWatchedWeather: (weather) async {
        emit(state.copyWith(weather: weather, requestState: RequestState<Weather>.success(weather)));
      }, error: (exception) {
        emit(state.copyWith(requestState: RequestState<Weather>.error(exception)));
      });
    });
  }

  void subscribeWeather(int id) {
    _weatherSubscription?.cancel();
    _weatherSubscription = weatherRepository.getWeather(id).listen((event) {
      event.map(
          success: (value) => add(WeatherDetailsEvent.updateWatchedWeather(weather: value.data)),
          error: (value) => add(WeatherDetailsEvent.error(exception: value.exception)));
    });
  }

  @override
  Future<void> close() {
    _weatherSubscription?.cancel();
    return super.close();
  }
}
