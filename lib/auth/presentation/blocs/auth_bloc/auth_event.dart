part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;

  const LoginEvent(
    this.username,
    this.password,
  );

  @override
  List<Object> get props => [
        username,
        password,
      ];
}

class LoginPasswordToggledEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class RegisterEvent extends AuthEvent {
  final String username;
  final String password;

  const RegisterEvent(
    this.username,
    this.password,
  );

  @override
  List<Object> get props => [
        username,
        password,
      ];
}

class RegisterPasswordToggledEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class LogOutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
