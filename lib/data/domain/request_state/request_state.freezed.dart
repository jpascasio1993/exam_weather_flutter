// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) loaded,
    required TResult Function(Exception exception) error,
    required TResult Function(String? message) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? loaded,
    TResult? Function(Exception exception)? error,
    TResult? Function(String? message)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? loaded,
    TResult Function(Exception exception)? error,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStateInit<T> value) init,
    required TResult Function(_RequestStateSuccess<T> value) loaded,
    required TResult Function(_RequestStateException<T> value) error,
    required TResult Function(_RequestStateLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestStateInit<T> value)? init,
    TResult? Function(_RequestStateSuccess<T> value)? loaded,
    TResult? Function(_RequestStateException<T> value)? error,
    TResult? Function(_RequestStateLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStateInit<T> value)? init,
    TResult Function(_RequestStateSuccess<T> value)? loaded,
    TResult Function(_RequestStateException<T> value)? error,
    TResult Function(_RequestStateLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<T, $Res> {
  factory $RequestStateCopyWith(
          RequestState<T> value, $Res Function(RequestState<T>) then) =
      _$RequestStateCopyWithImpl<T, $Res, RequestState<T>>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<T, $Res, $Val extends RequestState<T>>
    implements $RequestStateCopyWith<T, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestStateInitCopyWith<T, $Res> {
  factory _$$_RequestStateInitCopyWith(_$_RequestStateInit<T> value,
          $Res Function(_$_RequestStateInit<T>) then) =
      __$$_RequestStateInitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_RequestStateInitCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$_RequestStateInit<T>>
    implements _$$_RequestStateInitCopyWith<T, $Res> {
  __$$_RequestStateInitCopyWithImpl(_$_RequestStateInit<T> _value,
      $Res Function(_$_RequestStateInit<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestStateInit<T> implements _RequestStateInit<T> {
  const _$_RequestStateInit();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestStateInit<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) loaded,
    required TResult Function(Exception exception) error,
    required TResult Function(String? message) loading,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? loaded,
    TResult? Function(Exception exception)? error,
    TResult? Function(String? message)? loading,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? loaded,
    TResult Function(Exception exception)? error,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStateInit<T> value) init,
    required TResult Function(_RequestStateSuccess<T> value) loaded,
    required TResult Function(_RequestStateException<T> value) error,
    required TResult Function(_RequestStateLoading<T> value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestStateInit<T> value)? init,
    TResult? Function(_RequestStateSuccess<T> value)? loaded,
    TResult? Function(_RequestStateException<T> value)? error,
    TResult? Function(_RequestStateLoading<T> value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStateInit<T> value)? init,
    TResult Function(_RequestStateSuccess<T> value)? loaded,
    TResult Function(_RequestStateException<T> value)? error,
    TResult Function(_RequestStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _RequestStateInit<T> implements RequestState<T> {
  const factory _RequestStateInit() = _$_RequestStateInit<T>;
}

/// @nodoc
abstract class _$$_RequestStateSuccessCopyWith<T, $Res> {
  factory _$$_RequestStateSuccessCopyWith(_$_RequestStateSuccess<T> value,
          $Res Function(_$_RequestStateSuccess<T>) then) =
      __$$_RequestStateSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_RequestStateSuccessCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$_RequestStateSuccess<T>>
    implements _$$_RequestStateSuccessCopyWith<T, $Res> {
  __$$_RequestStateSuccessCopyWithImpl(_$_RequestStateSuccess<T> _value,
      $Res Function(_$_RequestStateSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_RequestStateSuccess<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_RequestStateSuccess<T> implements _RequestStateSuccess<T> {
  const _$_RequestStateSuccess(this.data);

  @override
  final T data;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestStateSuccessCopyWith<T, _$_RequestStateSuccess<T>> get copyWith =>
      __$$_RequestStateSuccessCopyWithImpl<T, _$_RequestStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) loaded,
    required TResult Function(Exception exception) error,
    required TResult Function(String? message) loading,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? loaded,
    TResult? Function(Exception exception)? error,
    TResult? Function(String? message)? loading,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? loaded,
    TResult Function(Exception exception)? error,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStateInit<T> value) init,
    required TResult Function(_RequestStateSuccess<T> value) loaded,
    required TResult Function(_RequestStateException<T> value) error,
    required TResult Function(_RequestStateLoading<T> value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestStateInit<T> value)? init,
    TResult? Function(_RequestStateSuccess<T> value)? loaded,
    TResult? Function(_RequestStateException<T> value)? error,
    TResult? Function(_RequestStateLoading<T> value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStateInit<T> value)? init,
    TResult Function(_RequestStateSuccess<T> value)? loaded,
    TResult Function(_RequestStateException<T> value)? error,
    TResult Function(_RequestStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RequestStateSuccess<T> implements RequestState<T> {
  const factory _RequestStateSuccess(final T data) = _$_RequestStateSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_RequestStateSuccessCopyWith<T, _$_RequestStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestStateExceptionCopyWith<T, $Res> {
  factory _$$_RequestStateExceptionCopyWith(_$_RequestStateException<T> value,
          $Res Function(_$_RequestStateException<T>) then) =
      __$$_RequestStateExceptionCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$_RequestStateExceptionCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$_RequestStateException<T>>
    implements _$$_RequestStateExceptionCopyWith<T, $Res> {
  __$$_RequestStateExceptionCopyWithImpl(_$_RequestStateException<T> _value,
      $Res Function(_$_RequestStateException<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_RequestStateException<T>(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_RequestStateException<T> implements _RequestStateException<T> {
  const _$_RequestStateException(this.exception);

  @override
  final Exception exception;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestStateException<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestStateExceptionCopyWith<T, _$_RequestStateException<T>>
      get copyWith => __$$_RequestStateExceptionCopyWithImpl<T,
          _$_RequestStateException<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) loaded,
    required TResult Function(Exception exception) error,
    required TResult Function(String? message) loading,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? loaded,
    TResult? Function(Exception exception)? error,
    TResult? Function(String? message)? loading,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? loaded,
    TResult Function(Exception exception)? error,
    TResult Function(String? message)? loading,
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
    required TResult Function(_RequestStateInit<T> value) init,
    required TResult Function(_RequestStateSuccess<T> value) loaded,
    required TResult Function(_RequestStateException<T> value) error,
    required TResult Function(_RequestStateLoading<T> value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestStateInit<T> value)? init,
    TResult? Function(_RequestStateSuccess<T> value)? loaded,
    TResult? Function(_RequestStateException<T> value)? error,
    TResult? Function(_RequestStateLoading<T> value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStateInit<T> value)? init,
    TResult Function(_RequestStateSuccess<T> value)? loaded,
    TResult Function(_RequestStateException<T> value)? error,
    TResult Function(_RequestStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RequestStateException<T> implements RequestState<T> {
  const factory _RequestStateException(final Exception exception) =
      _$_RequestStateException<T>;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$_RequestStateExceptionCopyWith<T, _$_RequestStateException<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestStateLoadingCopyWith<T, $Res> {
  factory _$$_RequestStateLoadingCopyWith(_$_RequestStateLoading<T> value,
          $Res Function(_$_RequestStateLoading<T>) then) =
      __$$_RequestStateLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_RequestStateLoadingCopyWithImpl<T, $Res>
    extends _$RequestStateCopyWithImpl<T, $Res, _$_RequestStateLoading<T>>
    implements _$$_RequestStateLoadingCopyWith<T, $Res> {
  __$$_RequestStateLoadingCopyWithImpl(_$_RequestStateLoading<T> _value,
      $Res Function(_$_RequestStateLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_RequestStateLoading<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RequestStateLoading<T> implements _RequestStateLoading<T> {
  const _$_RequestStateLoading({this.message});

  @override
  final String? message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestStateLoading<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestStateLoadingCopyWith<T, _$_RequestStateLoading<T>> get copyWith =>
      __$$_RequestStateLoadingCopyWithImpl<T, _$_RequestStateLoading<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) loaded,
    required TResult Function(Exception exception) error,
    required TResult Function(String? message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? loaded,
    TResult? Function(Exception exception)? error,
    TResult? Function(String? message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? loaded,
    TResult Function(Exception exception)? error,
    TResult Function(String? message)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStateInit<T> value) init,
    required TResult Function(_RequestStateSuccess<T> value) loaded,
    required TResult Function(_RequestStateException<T> value) error,
    required TResult Function(_RequestStateLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestStateInit<T> value)? init,
    TResult? Function(_RequestStateSuccess<T> value)? loaded,
    TResult? Function(_RequestStateException<T> value)? error,
    TResult? Function(_RequestStateLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStateInit<T> value)? init,
    TResult Function(_RequestStateSuccess<T> value)? loaded,
    TResult Function(_RequestStateException<T> value)? error,
    TResult Function(_RequestStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RequestStateLoading<T> implements RequestState<T> {
  const factory _RequestStateLoading({final String? message}) =
      _$_RequestStateLoading<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$_RequestStateLoadingCopyWith<T, _$_RequestStateLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
