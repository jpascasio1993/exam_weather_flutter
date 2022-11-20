// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalWeatherDTO _$LocalWeatherDTOFromJson(Map<String, dynamic> json) {
  return _LocalWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$LocalWeatherDTO {
  int get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'fav')
  bool get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalWeatherDTOCopyWith<LocalWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalWeatherDTOCopyWith<$Res> {
  factory $LocalWeatherDTOCopyWith(
          LocalWeatherDTO value, $Res Function(LocalWeatherDTO) then) =
      _$LocalWeatherDTOCopyWithImpl<$Res, LocalWeatherDTO>;
  @useResult
  $Res call(
      {int id,
      String city,
      String status,
      double tempMin,
      double tempMax,
      double temp,
      @JsonKey(name: 'fav') bool favorite});
}

/// @nodoc
class _$LocalWeatherDTOCopyWithImpl<$Res, $Val extends LocalWeatherDTO>
    implements $LocalWeatherDTOCopyWith<$Res> {
  _$LocalWeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? status = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? temp = null,
    Object? favorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalWeatherDTOCopyWith<$Res>
    implements $LocalWeatherDTOCopyWith<$Res> {
  factory _$$_LocalWeatherDTOCopyWith(
          _$_LocalWeatherDTO value, $Res Function(_$_LocalWeatherDTO) then) =
      __$$_LocalWeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String city,
      String status,
      double tempMin,
      double tempMax,
      double temp,
      @JsonKey(name: 'fav') bool favorite});
}

/// @nodoc
class __$$_LocalWeatherDTOCopyWithImpl<$Res>
    extends _$LocalWeatherDTOCopyWithImpl<$Res, _$_LocalWeatherDTO>
    implements _$$_LocalWeatherDTOCopyWith<$Res> {
  __$$_LocalWeatherDTOCopyWithImpl(
      _$_LocalWeatherDTO _value, $Res Function(_$_LocalWeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? status = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? temp = null,
    Object? favorite = null,
  }) {
    return _then(_$_LocalWeatherDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LocalWeatherDTO implements _LocalWeatherDTO {
  const _$_LocalWeatherDTO(
      {required this.id,
      this.city = 'N/A',
      this.status = 'N/A',
      this.tempMin = 0.0,
      this.tempMax = 0.0,
      this.temp = 0.0,
      @JsonKey(name: 'fav') this.favorite = false});

  factory _$_LocalWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LocalWeatherDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final double tempMin;
  @override
  @JsonKey()
  final double tempMax;
  @override
  @JsonKey()
  final double temp;
  @override
  @JsonKey(name: 'fav')
  final bool favorite;

  @override
  String toString() {
    return 'LocalWeatherDTO(id: $id, city: $city, status: $status, tempMin: $tempMin, tempMax: $tempMax, temp: $temp, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalWeatherDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, city, status, tempMin, tempMax, temp, favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalWeatherDTOCopyWith<_$_LocalWeatherDTO> get copyWith =>
      __$$_LocalWeatherDTOCopyWithImpl<_$_LocalWeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalWeatherDTOToJson(
      this,
    );
  }
}

abstract class _LocalWeatherDTO implements LocalWeatherDTO {
  const factory _LocalWeatherDTO(
      {required final int id,
      final String city,
      final String status,
      final double tempMin,
      final double tempMax,
      final double temp,
      @JsonKey(name: 'fav') final bool favorite}) = _$_LocalWeatherDTO;

  factory _LocalWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_LocalWeatherDTO.fromJson;

  @override
  int get id;
  @override
  String get city;
  @override
  String get status;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  double get temp;
  @override
  @JsonKey(name: 'fav')
  bool get favorite;
  @override
  @JsonKey(ignore: true)
  _$$_LocalWeatherDTOCopyWith<_$_LocalWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
