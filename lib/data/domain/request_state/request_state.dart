import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<T> with _$RequestState<T> {
  const factory RequestState.init() = _RequestStateInit<T>;
  const factory RequestState.loaded(T data) = _RequestStateSuccess<T>;
  const factory RequestState.error(Exception exception) = _RequestStateException<T>;
  const factory RequestState.loading({String? message}) = _RequestStateLoading<T>;

  @override
  String toString() {
    return when(
        init: () => 'Init',
        loading: (message) => 'Loading[message=$message]',
        loaded: (data) => 'Success[data=$data]',
        error: (exception) => 'Error[exception=$exception]');
  }
}
