// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(int id) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(int id)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(int id)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherEventGetFromLocal value) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult? Function(_WeatherEventGetFromLocal value)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult Function(_WeatherEventGetFromLocal value)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherEventGetFromRemoteCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$_WeatherEventGetFromRemoteCopyWith(
          _$_WeatherEventGetFromRemote value,
          $Res Function(_$_WeatherEventGetFromRemote) then) =
      __$$_WeatherEventGetFromRemoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_WeatherEventGetFromRemoteCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_WeatherEventGetFromRemote>
    implements _$$_WeatherEventGetFromRemoteCopyWith<$Res> {
  __$$_WeatherEventGetFromRemoteCopyWithImpl(
      _$_WeatherEventGetFromRemote _value,
      $Res Function(_$_WeatherEventGetFromRemote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WeatherEventGetFromRemote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherEventGetFromRemote implements _WeatherEventGetFromRemote {
  const _$_WeatherEventGetFromRemote({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WeatherEvent.getWeatherFromRemote(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherEventGetFromRemote &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherEventGetFromRemoteCopyWith<_$_WeatherEventGetFromRemote>
      get copyWith => __$$_WeatherEventGetFromRemoteCopyWithImpl<
          _$_WeatherEventGetFromRemote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(int id) getWeather,
  }) {
    return getWeatherFromRemote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(int id)? getWeather,
  }) {
    return getWeatherFromRemote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(int id)? getWeather,
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
    required TResult Function(_WeatherEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherEventGetFromLocal value) getWeather,
  }) {
    return getWeatherFromRemote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult? Function(_WeatherEventGetFromLocal value)? getWeather,
  }) {
    return getWeatherFromRemote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult Function(_WeatherEventGetFromLocal value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeatherFromRemote != null) {
      return getWeatherFromRemote(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventGetFromRemote implements WeatherEvent {
  const factory _WeatherEventGetFromRemote({required final int id}) =
      _$_WeatherEventGetFromRemote;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherEventGetFromRemoteCopyWith<_$_WeatherEventGetFromRemote>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherEventGetFromLocalCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$_WeatherEventGetFromLocalCopyWith(
          _$_WeatherEventGetFromLocal value,
          $Res Function(_$_WeatherEventGetFromLocal) then) =
      __$$_WeatherEventGetFromLocalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_WeatherEventGetFromLocalCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_WeatherEventGetFromLocal>
    implements _$$_WeatherEventGetFromLocalCopyWith<$Res> {
  __$$_WeatherEventGetFromLocalCopyWithImpl(_$_WeatherEventGetFromLocal _value,
      $Res Function(_$_WeatherEventGetFromLocal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_WeatherEventGetFromLocal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherEventGetFromLocal implements _WeatherEventGetFromLocal {
  const _$_WeatherEventGetFromLocal({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WeatherEvent.getWeather(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherEventGetFromLocal &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherEventGetFromLocalCopyWith<_$_WeatherEventGetFromLocal>
      get copyWith => __$$_WeatherEventGetFromLocalCopyWithImpl<
          _$_WeatherEventGetFromLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getWeatherFromRemote,
    required TResult Function(int id) getWeather,
  }) {
    return getWeather(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getWeatherFromRemote,
    TResult? Function(int id)? getWeather,
  }) {
    return getWeather?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getWeatherFromRemote,
    TResult Function(int id)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventGetFromRemote value)
        getWeatherFromRemote,
    required TResult Function(_WeatherEventGetFromLocal value) getWeather,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult? Function(_WeatherEventGetFromLocal value)? getWeather,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventGetFromRemote value)? getWeatherFromRemote,
    TResult Function(_WeatherEventGetFromLocal value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventGetFromLocal implements WeatherEvent {
  const factory _WeatherEventGetFromLocal({required final int id}) =
      _$_WeatherEventGetFromLocal;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherEventGetFromLocalCopyWith<_$_WeatherEventGetFromLocal>
      get copyWith => throw _privateConstructorUsedError;
}
