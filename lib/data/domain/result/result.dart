import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _ResultSuccess;
  const factory Result.error(Exception exception) = _ResultException;

  @override
  String toString() {
    return when(success: (data) => 'Success[data=$data]',
        error: (exception) => 'Error[exception=$exception]');
  }
}