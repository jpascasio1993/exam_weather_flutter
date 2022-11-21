import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<T> with _$RequestState<T> {
  const factory RequestState.init() = _RequestStateInit;
  const factory RequestState.success(T data) = _RequestStateSuccess;
  const factory RequestState.error(Exception exception) = _RequestStateException;
  const factory RequestState.loading({String? message}) = _RequestStateLoading;

  @override
  String toString() {
    return when(
        init: () => 'Init',
        loading: (message) => 'Loading[message=$message]',
        success: (data) => 'Success[data=$data]',
        error: (exception) => 'Error[exception=$exception]');
  }
}
