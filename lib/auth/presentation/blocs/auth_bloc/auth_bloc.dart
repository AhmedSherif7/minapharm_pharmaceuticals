import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/requests/auth_request.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/use_cases/login_use_case.dart';
import '../../../domain/use_cases/logout_use_case.dart';
import '../../../domain/use_cases/register_use_case.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc(
    this.loginUseCase,
    this.registerUseCase,
    this.logoutUseCase,
  ) : super(const AuthState()) {
    on<LoginEvent>(_login);
    on<LoginPasswordToggledEvent>(_toggleLoginPasswordVisibility);
    on<RegisterEvent>(_register);
    on<RegisterPasswordToggledEvent>(_toggleRegisterPasswordVisibility);
    on<LogOutEvent>(_logout);
  }

  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        loginState: RequestState.loading,
      ),
    );

    final result = await loginUseCase(
      AuthRequest(username: event.username, password: event.password),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            loginState: RequestState.error,
            loginError: failure.toError().message,
          ),
        );
      },
      (user) {
        emit(
          state.copyWith(
            loginState: RequestState.success,
            user: user,
          ),
        );
      },
    );
  }

  void _toggleLoginPasswordVisibility(
      LoginPasswordToggledEvent event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        loginPasswordVisible: !state.loginPasswordVisible,
      ),
    );
  }

  Future<void> _register(RegisterEvent event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        registerState: RequestState.loading,
      ),
    );

    final result = await registerUseCase(
      AuthRequest(username: event.username, password: event.password),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            registerState: RequestState.error,
            registerError: failure.toError().message,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            registerState: RequestState.success,
          ),
        );
      },
    );
  }

  void _toggleRegisterPasswordVisibility(
      RegisterPasswordToggledEvent event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        registerPasswordVisible: !state.registerPasswordVisible,
      ),
    );
  }

  Future<void> _logout(LogOutEvent event, Emitter<AuthState> emit) async {
    final result = await logoutUseCase(
      const NoParameters(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            logoutState: RequestState.error,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            logoutState: RequestState.success,
          ),
        );
      },
    );
  }
}
