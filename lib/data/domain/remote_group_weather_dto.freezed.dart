// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_group_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteGroupWeatherDTO _$RemoteGroupWeatherDTOFromJson(
    Map<String, dynamic> json) {
  return _RemoteGroupWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$RemoteGroupWeatherDTO {
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteGroupWeatherDTOCopyWith<RemoteGroupWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteGroupWeatherDTOCopyWith<$Res> {
  factory $RemoteGroupWeatherDTOCopyWith(RemoteGroupWeatherDTO value,
          $Res Function(RemoteGroupWeatherDTO) then) =
      _$RemoteGroupWeatherDTOCopyWithImpl<$Res, RemoteGroupWeatherDTO>;
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDTO> weathers});
}

/// @nodoc
class _$RemoteGroupWeatherDTOCopyWithImpl<$Res,
        $Val extends RemoteGroupWeatherDTO>
    implements $RemoteGroupWeatherDTOCopyWith<$Res> {
  _$RemoteGroupWeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_value.copyWith(
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteGroupWeatherDTOCopyWith<$Res>
    implements $RemoteGroupWeatherDTOCopyWith<$Res> {
  factory _$$_RemoteGroupWeatherDTOCopyWith(_$_RemoteGroupWeatherDTO value,
          $Res Function(_$_RemoteGroupWeatherDTO) then) =
      __$$_RemoteGroupWeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDTO> weathers});
}

/// @nodoc
class __$$_RemoteGroupWeatherDTOCopyWithImpl<$Res>
    extends _$RemoteGroupWeatherDTOCopyWithImpl<$Res, _$_RemoteGroupWeatherDTO>
    implements _$$_RemoteGroupWeatherDTOCopyWith<$Res> {
  __$$_RemoteGroupWeatherDTOCopyWithImpl(_$_RemoteGroupWeatherDTO _value,
      $Res Function(_$_RemoteGroupWeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_$_RemoteGroupWeatherDTO(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_RemoteGroupWeatherDTO implements _RemoteGroupWeatherDTO {
  const _$_RemoteGroupWeatherDTO(
      {@JsonKey(name: 'list') final List<WeatherDTO> weathers = const []})
      : _weathers = weathers;

  factory _$_RemoteGroupWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteGroupWeatherDTOFromJson(json);

  final List<WeatherDTO> _weathers;
  @override
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  String toString() {
    return 'RemoteGroupWeatherDTO(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteGroupWeatherDTO &&
            const DeepCollectionEquality().equals(other._weathers, _weathers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weathers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteGroupWeatherDTOCopyWith<_$_RemoteGroupWeatherDTO> get copyWith =>
      __$$_RemoteGroupWeatherDTOCopyWithImpl<_$_RemoteGroupWeatherDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteGroupWeatherDTOToJson(
      this,
    );
  }
}

abstract class _RemoteGroupWeatherDTO implements RemoteGroupWeatherDTO {
  const factory _RemoteGroupWeatherDTO(
          {@JsonKey(name: 'list') final List<WeatherDTO> weathers}) =
      _$_RemoteGroupWeatherDTO;

  factory _RemoteGroupWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_RemoteGroupWeatherDTO.fromJson;

  @override
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteGroupWeatherDTOCopyWith<_$_RemoteGroupWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
