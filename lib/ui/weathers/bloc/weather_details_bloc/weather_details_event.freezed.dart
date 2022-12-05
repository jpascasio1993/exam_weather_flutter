// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(Weather weather) updateWatchedWeather,
    required TResult Function(Exception exception) error,
    required TResult Function(int id, bool isFavorite) setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(Weather weather)? updateWatchedWeather,
    TResult? Function(Exception exception)? error,
    TResult? Function(int id, bool isFavorite)? setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(Weather weather)? updateWatchedWeather,
    TResult Function(Exception exception)? error,
    TResult Function(int id, bool isFavorite)? setFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherDetailsEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)
        updateWatchedWeather,
    required TResult Function(_WeatherDetailsEventError value) error,
    required TResult Function(_WeatherDetailsEventSetFavorite value)
        setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult? Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult? Function(_WeatherDetailsEventError value)? error,
    TResult? Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult Function(_WeatherDetailsEventError value)? error,
    TResult Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailsEventCopyWith<$Res> {
  factory $WeatherDetailsEventCopyWith(
          WeatherDetailsEvent value, $Res Function(WeatherDetailsEvent) then) =
      _$WeatherDetailsEventCopyWithImpl<$Res, WeatherDetailsEvent>;
}

/// @nodoc
class _$WeatherDetailsEventCopyWithImpl<$Res, $Val extends WeatherDetailsEvent>
    implements $WeatherDetailsEventCopyWith<$Res> {
  _$WeatherDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeatherDetailsEventGetFromRemoteCopyWith<$Res> {
  factory _$$_WeatherDetailsEventGetFromRemoteCopyWith(
          _$_WeatherDetailsEventGetFromRemote value,
          $Res Function(_$_WeatherDetailsEventGetFromRemote) then) =
      __$$_WeatherDetailsEventGetFromRemoteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_WeatherDetailsEventGetFromRemoteCopyWithImpl<$Res>
    extends _$WeatherDetailsEventCopyWithImpl<$Res,
        _$_WeatherDetailsEventGetFromRemote>
    implements _$$_WeatherDetailsEventGetFromRemoteCopyWith<$Res> {
  __$$_WeatherDetailsEventGetFromRemoteCopyWithImpl(
      _$_WeatherDetailsEventGetFromRemote _value,
      $Res Function(_$_WeatherDetailsEventGetFromRemote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WeatherDetailsEventGetFromRemote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailsEventGetFromRemote
    implements _WeatherDetailsEventGetFromRemote {
  const _$_WeatherDetailsEventGetFromRemote({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WeatherDetailsEvent.getWeatherFromRemote(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailsEventGetFromRemote &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsEventGetFromRemoteCopyWith<
          _$_WeatherDetailsEventGetFromRemote>
      get copyWith => __$$_WeatherDetailsEventGetFromRemoteCopyWithImpl<
          _$_WeatherDetailsEventGetFromRemote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(Weather weather) updateWatchedWeather,
    required TResult Function(Exception exception) error,
    required TResult Function(int id, bool isFavorite) setFavorite,
  }) {
    return getWeatherFromRemote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(Weather weather)? updateWatchedWeather,
    TResult? Function(Exception exception)? error,
    TResult? Function(int id, bool isFavorite)? setFavorite,
  }) {
    return getWeatherFromRemote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(Weather weather)? updateWatchedWeather,
    TResult Function(Exception exception)? error,
    TResult Function(int id, bool isFavorite)? setFavorite,
    required TResult orElse(),
  }) {
    if (getWeatherFromRemote != null) {
      return getWeatherFromRemote(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherDetailsEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)
        updateWatchedWeather,
    required TResult Function(_WeatherDetailsEventError value) error,
    required TResult Function(_WeatherDetailsEventSetFavorite value)
        setFavorite,
  }) {
    return getWeatherFromRemote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult? Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult? Function(_WeatherDetailsEventError value)? error,
    TResult? Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
  }) {
    return getWeatherFromRemote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult Function(_WeatherDetailsEventError value)? error,
    TResult Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (getWeatherFromRemote != null) {
      return getWeatherFromRemote(this);
    }
    return orElse();
  }
}

abstract class _WeatherDetailsEventGetFromRemote
    implements WeatherDetailsEvent {
  const factory _WeatherDetailsEventGetFromRemote({required final int id}) =
      _$_WeatherDetailsEventGetFromRemote;

  int get id;
  @JsonKey(ignore: true)
  _$$_WeatherDetailsEventGetFromRemoteCopyWith<
          _$_WeatherDetailsEventGetFromRemote>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherDetailsEventUpdateWatchedWeatherCopyWith<$Res> {
  factory _$$_WeatherDetailsEventUpdateWatchedWeatherCopyWith(
          _$_WeatherDetailsEventUpdateWatchedWeather value,
          $Res Function(_$_WeatherDetailsEventUpdateWatchedWeather) then) =
      __$$_WeatherDetailsEventUpdateWatchedWeatherCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_WeatherDetailsEventUpdateWatchedWeatherCopyWithImpl<$Res>
    extends _$WeatherDetailsEventCopyWithImpl<$Res,
        _$_WeatherDetailsEventUpdateWatchedWeather>
    implements _$$_WeatherDetailsEventUpdateWatchedWeatherCopyWith<$Res> {
  __$$_WeatherDetailsEventUpdateWatchedWeatherCopyWithImpl(
      _$_WeatherDetailsEventUpdateWatchedWeather _value,
      $Res Function(_$_WeatherDetailsEventUpdateWatchedWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$_WeatherDetailsEventUpdateWatchedWeather(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$_WeatherDetailsEventUpdateWatchedWeather
    implements _WeatherDetailsEventUpdateWatchedWeather {
  const _$_WeatherDetailsEventUpdateWatchedWeather({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherDetailsEvent.updateWatchedWeather(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailsEventUpdateWatchedWeather &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsEventUpdateWatchedWeatherCopyWith<
          _$_WeatherDetailsEventUpdateWatchedWeather>
      get copyWith => __$$_WeatherDetailsEventUpdateWatchedWeatherCopyWithImpl<
          _$_WeatherDetailsEventUpdateWatchedWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(Weather weather) updateWatchedWeather,
    required TResult Function(Exception exception) error,
    required TResult Function(int id, bool isFavorite) setFavorite,
  }) {
    return updateWatchedWeather(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(Weather weather)? updateWatchedWeather,
    TResult? Function(Exception exception)? error,
    TResult? Function(int id, bool isFavorite)? setFavorite,
  }) {
    return updateWatchedWeather?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(Weather weather)? updateWatchedWeather,
    TResult Function(Exception exception)? error,
    TResult Function(int id, bool isFavorite)? setFavorite,
    required TResult orElse(),
  }) {
    if (updateWatchedWeather != null) {
      return updateWatchedWeather(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherDetailsEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)
        updateWatchedWeather,
    required TResult Function(_WeatherDetailsEventError value) error,
    required TResult Function(_WeatherDetailsEventSetFavorite value)
        setFavorite,
  }) {
    return updateWatchedWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult? Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult? Function(_WeatherDetailsEventError value)? error,
    TResult? Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
  }) {
    return updateWatchedWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult Function(_WeatherDetailsEventError value)? error,
    TResult Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (updateWatchedWeather != null) {
      return updateWatchedWeather(this);
    }
    return orElse();
  }
}

abstract class _WeatherDetailsEventUpdateWatchedWeather
    implements WeatherDetailsEvent {
  const factory _WeatherDetailsEventUpdateWatchedWeather(
          {required final Weather weather}) =
      _$_WeatherDetailsEventUpdateWatchedWeather;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$_WeatherDetailsEventUpdateWatchedWeatherCopyWith<
          _$_WeatherDetailsEventUpdateWatchedWeather>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherDetailsEventErrorCopyWith<$Res> {
  factory _$$_WeatherDetailsEventErrorCopyWith(
          _$_WeatherDetailsEventError value,
          $Res Function(_$_WeatherDetailsEventError) then) =
      __$$_WeatherDetailsEventErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$_WeatherDetailsEventErrorCopyWithImpl<$Res>
    extends _$WeatherDetailsEventCopyWithImpl<$Res, _$_WeatherDetailsEventError>
    implements _$$_WeatherDetailsEventErrorCopyWith<$Res> {
  __$$_WeatherDetailsEventErrorCopyWithImpl(_$_WeatherDetailsEventError _value,
      $Res Function(_$_WeatherDetailsEventError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_WeatherDetailsEventError(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailsEventError implements _WeatherDetailsEventError {
  const _$_WeatherDetailsEventError({required this.exception});

  @override
  final Exception exception;

  @override
  String toString() {
    return 'WeatherDetailsEvent.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailsEventError &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsEventErrorCopyWith<_$_WeatherDetailsEventError>
      get copyWith => __$$_WeatherDetailsEventErrorCopyWithImpl<
          _$_WeatherDetailsEventError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(Weather weather) updateWatchedWeather,
    required TResult Function(Exception exception) error,
    required TResult Function(int id, bool isFavorite) setFavorite,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(Weather weather)? updateWatchedWeather,
    TResult? Function(Exception exception)? error,
    TResult? Function(int id, bool isFavorite)? setFavorite,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(Weather weather)? updateWatchedWeather,
    TResult Function(Exception exception)? error,
    TResult Function(int id, bool isFavorite)? setFavorite,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherDetailsEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)
        updateWatchedWeather,
    required TResult Function(_WeatherDetailsEventError value) error,
    required TResult Function(_WeatherDetailsEventSetFavorite value)
        setFavorite,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult? Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult? Function(_WeatherDetailsEventError value)? error,
    TResult? Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult Function(_WeatherDetailsEventError value)? error,
    TResult Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherDetailsEventError implements WeatherDetailsEvent {
  const factory _WeatherDetailsEventError(
      {required final Exception exception}) = _$_WeatherDetailsEventError;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$_WeatherDetailsEventErrorCopyWith<_$_WeatherDetailsEventError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherDetailsEventSetFavoriteCopyWith<$Res> {
  factory _$$_WeatherDetailsEventSetFavoriteCopyWith(
          _$_WeatherDetailsEventSetFavorite value,
          $Res Function(_$_WeatherDetailsEventSetFavorite) then) =
      __$$_WeatherDetailsEventSetFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool isFavorite});
}

/// @nodoc
class __$$_WeatherDetailsEventSetFavoriteCopyWithImpl<$Res>
    extends _$WeatherDetailsEventCopyWithImpl<$Res,
        _$_WeatherDetailsEventSetFavorite>
    implements _$$_WeatherDetailsEventSetFavoriteCopyWith<$Res> {
  __$$_WeatherDetailsEventSetFavoriteCopyWithImpl(
      _$_WeatherDetailsEventSetFavorite _value,
      $Res Function(_$_WeatherDetailsEventSetFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_WeatherDetailsEventSetFavorite(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailsEventSetFavorite
    implements _WeatherDetailsEventSetFavorite {
  const _$_WeatherDetailsEventSetFavorite(
      {required this.id, required this.isFavorite});

  @override
  final int id;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'WeatherDetailsEvent.setFavorite(id: $id, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailsEventSetFavorite &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailsEventSetFavoriteCopyWith<_$_WeatherDetailsEventSetFavorite>
      get copyWith => __$$_WeatherDetailsEventSetFavoriteCopyWithImpl<
          _$_WeatherDetailsEventSetFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(Weather weather) updateWatchedWeather,
    required TResult Function(Exception exception) error,
    required TResult Function(int id, bool isFavorite) setFavorite,
  }) {
    return setFavorite(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(Weather weather)? updateWatchedWeather,
    TResult? Function(Exception exception)? error,
    TResult? Function(int id, bool isFavorite)? setFavorite,
  }) {
    return setFavorite?.call(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(Weather weather)? updateWatchedWeather,
    TResult Function(Exception exception)? error,
    TResult Function(int id, bool isFavorite)? setFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(id, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherDetailsEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)
        updateWatchedWeather,
    required TResult Function(_WeatherDetailsEventError value) error,
    required TResult Function(_WeatherDetailsEventSetFavorite value)
        setFavorite,
  }) {
    return setFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult? Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult? Function(_WeatherDetailsEventError value)? error,
    TResult? Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
  }) {
    return setFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherDetailsEventGetFromRemote value)?
        getWeatherFromRemote,
    TResult Function(_WeatherDetailsEventUpdateWatchedWeather value)?
        updateWatchedWeather,
    TResult Function(_WeatherDetailsEventError value)? error,
    TResult Function(_WeatherDetailsEventSetFavorite value)? setFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(this);
    }
    return orElse();
  }
}

abstract class _WeatherDetailsEventSetFavorite implements WeatherDetailsEvent {
  const factory _WeatherDetailsEventSetFavorite(
      {required final int id,
      required final bool isFavorite}) = _$_WeatherDetailsEventSetFavorite;

  int get id;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$_WeatherDetailsEventSetFavoriteCopyWith<_$_WeatherDetailsEventSetFavorite>
      get copyWith => throw _privateConstructorUsedError;
}
