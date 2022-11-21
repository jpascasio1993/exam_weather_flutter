import 'package:exam_weather_flutter/data/domain/request_state/request_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    required RequestState<dynamic> requestState
  }) = _FavoritesState;

}
