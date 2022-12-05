import 'dart:async';

import 'package:exam_weather_flutter/data/domain/request_state/request_state.dart';
import 'package:exam_weather_flutter/data/domain/weather/weather.dart';
import 'package:exam_weather_flutter/data/repository/weather_repository/i_weather_repository.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_event.dart';
import 'package:exam_weather_flutter/ui/weathers/bloc/weather_bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository weatherRepository;
  final dummyDataIds = [1701668, 3067696, 1835848];
  StreamSubscription<List<Weather>>? _weatherSubscription;

  WeatherBloc({required this.weatherRepository}) : super(const WeatherState()) {
    on<WeatherEvent>((event, emit) async {
      await event.when(
        getWeathersFromRemote: () async {
          emit(state.copyWith(requestState: const RequestState<List<Weather>>.loading()));
          await weatherRepository.updateLocalWeathers(dummyDataIds);
        },
          getWeathers: () async {
        emit(state.copyWith(requestState: const RequestState<List<Weather>>.loading()));
        await subscribeWeather();
      }, setFavorite: (id, isFavorite) async {
        final result = await weatherRepository.setFavorite(id, isFavorite);
        result.maybeWhen(
            error: (exception) {
              // TODO: show error
            },
            orElse: () => null);
      }, updateWeathers: (List<Weather> weathers) {
        emit(state.copyWith(requestState: RequestState<List<Weather>>.loaded(weathers), weathers: weathers));
      });
    });
  }

  Future<void> subscribeWeather() async {
    await _weatherSubscription?.cancel();
    await weatherRepository.updateLocalWeathers(dummyDataIds);
    _weatherSubscription = weatherRepository.getWeathers().listen((weathers) {
      add(WeatherEvent.updateWeathers(weathers: weathers));
    });
  }

  @override
  Future<void> close() {
    _weatherSubscription?.cancel();
    return super.close();
  }
}
