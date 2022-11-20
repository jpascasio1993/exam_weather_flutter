import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_dto.freezed.dart';
part 'favorites_dto.g.dart';

@freezed
class FavoritesDTO with _$FavoritesDTO {
  const factory FavoritesDTO({required int weatherId}) = _FavoritesDTO;

  factory FavoritesDTO.fromJson(Map<String, dynamic> json) => _$FavoritesDTOFromJson(json);
}
