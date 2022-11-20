// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritesDTO _$FavoritesDTOFromJson(Map<String, dynamic> json) {
  return _FavoritesDTO.fromJson(json);
}

/// @nodoc
mixin _$FavoritesDTO {
  int get weatherId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesDTOCopyWith<FavoritesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesDTOCopyWith<$Res> {
  factory $FavoritesDTOCopyWith(
          FavoritesDTO value, $Res Function(FavoritesDTO) then) =
      _$FavoritesDTOCopyWithImpl<$Res, FavoritesDTO>;
  @useResult
  $Res call({int weatherId});
}

/// @nodoc
class _$FavoritesDTOCopyWithImpl<$Res, $Val extends FavoritesDTO>
    implements $FavoritesDTOCopyWith<$Res> {
  _$FavoritesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherId = null,
  }) {
    return _then(_value.copyWith(
      weatherId: null == weatherId
          ? _value.weatherId
          : weatherId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoritesDTOCopyWith<$Res>
    implements $FavoritesDTOCopyWith<$Res> {
  factory _$$_FavoritesDTOCopyWith(
          _$_FavoritesDTO value, $Res Function(_$_FavoritesDTO) then) =
      __$$_FavoritesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weatherId});
}

/// @nodoc
class __$$_FavoritesDTOCopyWithImpl<$Res>
    extends _$FavoritesDTOCopyWithImpl<$Res, _$_FavoritesDTO>
    implements _$$_FavoritesDTOCopyWith<$Res> {
  __$$_FavoritesDTOCopyWithImpl(
      _$_FavoritesDTO _value, $Res Function(_$_FavoritesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherId = null,
  }) {
    return _then(_$_FavoritesDTO(
      weatherId: null == weatherId
          ? _value.weatherId
          : weatherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritesDTO implements _FavoritesDTO {
  const _$_FavoritesDTO({required this.weatherId});

  factory _$_FavoritesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesDTOFromJson(json);

  @override
  final int weatherId;

  @override
  String toString() {
    return 'FavoritesDTO(weatherId: $weatherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesDTO &&
            (identical(other.weatherId, weatherId) ||
                other.weatherId == weatherId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weatherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesDTOCopyWith<_$_FavoritesDTO> get copyWith =>
      __$$_FavoritesDTOCopyWithImpl<_$_FavoritesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesDTOToJson(
      this,
    );
  }
}

abstract class _FavoritesDTO implements FavoritesDTO {
  const factory _FavoritesDTO({required final int weatherId}) = _$_FavoritesDTO;

  factory _FavoritesDTO.fromJson(Map<String, dynamic> json) =
      _$_FavoritesDTO.fromJson;

  @override
  int get weatherId;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesDTOCopyWith<_$_FavoritesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
