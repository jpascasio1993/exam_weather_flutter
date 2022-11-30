// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherDetailsState {
  Weather? get weather => throw _privateConstructorUsedError;
  RequestState<Weather> get requestState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDetailsStateCopyWith<WeatherDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailsStateCopyWith<$Res> {
  factory $WeatherDetailsStateCopyWith(
          WeatherDetailsState value, $Res Function(WeatherDetailsState) then) =
      _$WeatherDetailsStateCopyWithImpl<$Res, WeatherDetailsState>;
  @useResult
  $Res call({Weather? weather, RequestState<Weather> requestState});

  $WeatherCopyWith<$Res>? get weather;
  $RequestStateCopyWith<Weather, $Res> get requestState;
}

/// @nodoc
class _$WeatherDetailsStateCopyWithImpl<$Res, $Val extends WeatherDetailsState>
    implements $WeatherDetailsStateCopyWith<$Res> {
  _$WeatherDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? requestState = null,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Weather>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<Weather, $Res> get requestState {
    return $RequestStateCopyWith<Weather, $Res>(_value.requestState, (value) {
      return _then(_value.copyWith(requestState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherDetailsStateCopyWith<$Res>
    implements $WeatherDetailsStateCopyWith<$Res> {
  factory _$$_WeatherDetailsStateCopyWith(_$_WeatherDetailsState value,
          $Res Function(_$_WeatherDetailsState) then) =
      __$$_WeatherDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Weather? weather, RequestState<Weather> requestState});

  @override
  $WeatherCopyWith<$Res>? get weather;
  @override
  $RequestStateCopyWith<Weather, $Res> get requestState;
}

/// @nodoc
class __$$_WeatherDetailsStateCopyWithImpl<$Res>
    extends _$WeatherDetailsStateCopyWithImpl<$Res, _$_WeatherDetailsState>
    implements _$$_WeatherDetailsStateCopyWith<$Res> {
  __$$_WeatherDetailsStateCopyWithImpl(_$_WeatherDetailsState _value,
      $Res Function(_$_WeatherDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? requestState = null,
  }) {
    return _then(_$_WeatherDetailsState(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Weather>,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailsState implements _WeatherDetailsState {
  const _$_WeatherDetailsState(
      {this.weather, this.requestState = const RequestState<Weather>.init()});

  @override
  final Weather? weather;
  @override
  @JsonKey()
  final RequestState<Weather> requestState;

  @override
  String toString() {
    return 'WeatherDetailsState(weather: $weather, requestState: $requestState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailsState &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, requestState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsStateCopyWith<_$_WeatherDetailsState> get copyWith =>
      __$$_WeatherDetailsStateCopyWithImpl<_$_WeatherDetailsState>(
          this, _$identity);
}

abstract class _WeatherDetailsState implements WeatherDetailsState {
  const factory _WeatherDetailsState(
      {final Weather? weather,
      final RequestState<Weather> requestState}) = _$_WeatherDetailsState;

  @override
  Weather? get weather;
  @override
  RequestState<Weather> get requestState;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailsStateCopyWith<_$_WeatherDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
