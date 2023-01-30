import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/enums.dart';
import 'custom_error.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.httpFailure(HttpErrorType httpErrorType) = _HttpFailure;

  const factory Failure.authFailure(AuthErrorType authErrorType) = _AuthFailure;

  const factory Failure.databaseFailure(String message) = _DatabaseFailure;

  const factory Failure.cacheFailure() = _CacheFailure;

  const factory Failure.unKnownFailure() = _UnKnownFailure;
}

extension FailureEx on Failure {
  CustomError toError() {
    return when(
      httpFailure: (httpError) {
        switch (httpError) {
          case HttpErrorType.badRequest:
            return const CustomError(
              title: 'badRequest',
              message: 'Bad Request',
            );
          case HttpErrorType.unauthorized:
            return const CustomError(
              title: 'unauthorized',
              message: 'you are unauthorized',
            );
          case HttpErrorType.forbidden:
            return const CustomError(
              title: 'forbidden',
              message: 'Forbidden',
            );
          case HttpErrorType.notFound:
            return const CustomError(
              title: 'notFound',
              message: 'Not Found',
            );
          case HttpErrorType.requestTimeout:
            return const CustomError(
              title: 'requestTimeout',
              message: 'Connection Timeout',
            );
          case HttpErrorType.internalServerError:
            return const CustomError(
              title: 'internalServerError',
              message: 'Something went wrong with the server',
            );
          case HttpErrorType.unexpectedError:
            return const CustomError(
              title: 'unexpectedError',
              message: 'Unexpected Error',
            );
        }
      },
      authFailure: (AuthErrorType authErrorType) {
        switch (authErrorType) {
          case AuthErrorType.usernameError:
            return AuthCustomError(
              authErrorType: authErrorType,
              title: 'Username Error',
              message: 'this user name does not exist',
            );
          case AuthErrorType.passwordError:
            return AuthCustomError(
              authErrorType: authErrorType,
              title: 'Password Error',
              message: 'Incorrect password',
            );
        }
      },
      databaseFailure: (String message) => CustomError(
        title: 'Database Error',
        message: message,
      ),
      cacheFailure: () => const CustomError(
        title: 'Cache Error',
        message: 'It seems that your device is not connected to the network, '
            'please check your internet connectivity or try again later.',
      ),
      unKnownFailure: () => const CustomError(
        title: 'Unknown Error',
        message: 'Unknown error occurred, try again later',
      ),
    );
  }
}
