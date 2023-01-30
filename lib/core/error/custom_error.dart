import 'package:equatable/equatable.dart';

import '../enums/enums.dart';

class CustomError extends Equatable {
  const CustomError({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  List<Object?> get props => [
        title,
        message,
      ];
}

class AuthCustomError extends CustomError {
  const AuthCustomError({
    required this.authErrorType,
    required super.title,
    required super.message,
  });

  final AuthErrorType authErrorType;

  @override
  List<Object?> get props => [
        title,
        message,
        authErrorType,
      ];
}
