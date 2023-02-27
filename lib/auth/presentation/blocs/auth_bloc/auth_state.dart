part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final RequestState? logoutState;
  final RequestState? loginState;
  final bool loginPasswordVisible;
  final String loginError;
  final RequestState? registerState;
  final bool registerPasswordVisible;
  final String registerError;
  final User? user;

  const AuthState({
    this.logoutState,
    this.loginState,
    this.loginPasswordVisible = false,
    this.loginError = '',
    this.registerState,
    this.registerPasswordVisible = false,
    this.registerError = '',
    this.user,
  });

  AuthState copyWith({
    RequestState? logoutState,
    RequestState? loginState,
    bool? loginPasswordVisible,
    String? loginError,
    RequestState? registerState,
    bool? registerPasswordVisible,
    String? registerError,
    User? user,
  }) {
    return AuthState(
      loginState: loginState ?? this.loginState,
      logoutState: logoutState ?? this.logoutState,
      loginPasswordVisible: loginPasswordVisible ?? this.loginPasswordVisible,
      loginError: loginError ?? this.loginError,
      registerState: registerState ?? this.registerState,
      registerPasswordVisible:
          registerPasswordVisible ?? this.registerPasswordVisible,
      registerError: registerError ?? this.registerError,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [
        loginState,
        logoutState,
        loginPasswordVisible,
        loginError,
        registerState,
        registerPasswordVisible,
        registerError,
        user,
      ];
}
