import 'package:dio/dio.dart';

import '../enums/enums.dart';
import 'exceptions.dart';

class ApiErrorHandler {
  static void checkErrors(Response response) {
    for (var httpError in HttpErrorType.values) {
      if (response.statusCode == httpError.code) {
        throw CustomException.httpException(httpError);
      }
    }

    if (response.statusCode != 200 || response.data == null) {
      throw const CustomException.httpException(
        HttpErrorType.unexpectedError,
      );
    }
  }
}
