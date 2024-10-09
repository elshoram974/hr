import 'package:dio/dio.dart';

import '../../status/errors/failure.dart';
import '../../status/errors/failure_body.dart';
import '../../status/status.dart';
import '../../status/success/success.dart';

Future<Status<T>> executeAndHandleErrors<T>(
  Future<T> Function() function, [
  Future<T?> Function()? functionWhenError,
]) async {
  try {
    return Success<T>(await function());
  } catch (e) {
    T? data;
    if (functionWhenError != null) data = await functionWhenError();

    if (e is DioException) {
      return Failure<T>(FailureBody(message: "Server .... error... $e"), data);
    }

    return Failure<T>(FailureBody(message: e.toString()), data);
  }
}
