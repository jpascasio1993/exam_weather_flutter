import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_event.freezed.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.init() = _FavoritesEventInit;
  const factory FavoritesEvent.setFavorite({required int id, required bool isFavorite}) = _FavoritesEventSetFavorite;
}
