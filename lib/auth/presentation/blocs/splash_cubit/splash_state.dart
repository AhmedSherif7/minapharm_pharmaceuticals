part of 'splash_cubit.dart';

class SplashState extends Equatable {
  final RequestState loggedBeforeState;
  final String username;
  final String password;

  const SplashState({
    this.loggedBeforeState = RequestState.loading,
    this.username = '',
    this.password = '',
  });

  SplashState copyWith({
    RequestState? loggedBeforeState,
    String? username,
    String? password,
  }) {
    return SplashState(
      loggedBeforeState: loggedBeforeState ?? this.loggedBeforeState,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [
        loggedBeforeState,
        username,
        password,
      ];
}
