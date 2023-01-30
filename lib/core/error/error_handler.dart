import 'exceptions.dart';
import 'failures.dart';

class ErrorHandler {
  static Failure mapExceptionToFailure(dynamic error) {
    if (error is CustomException) {
      return error.when(
        httpException: (httpError) => Failure.httpFailure(httpError),
        authException: (authErrorType) => Failure.authFailure(authErrorType),
        databaseException: (message) => Failure.databaseFailure(message),
        cacheException: () => const Failure.cacheFailure(),
        unKnownException: () => const Failure.unKnownFailure(),
      );
    }

    return const Failure.unKnownFailure();
  }
}
