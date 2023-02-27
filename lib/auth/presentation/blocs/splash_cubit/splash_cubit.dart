import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../../domain/use_cases/check_if_logged_in_use_case.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final CheckIfLoggedInUseCase checkIfLoggedInUseCase;

  SplashCubit(
    this.checkIfLoggedInUseCase,
  ) : super(const SplashState());

  Future<void> checkIfUserLoggedIn() async {
    final result = await checkIfLoggedInUseCase(
      const NoParameters(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            loggedBeforeState: RequestState.error,
          ),
        );
      },
      (user) {
        if (user == null) {
          emit(
            state.copyWith(
              loggedBeforeState: RequestState.error,
            ),
          );
        } else {
          emit(
            state.copyWith(
              loggedBeforeState: RequestState.success,
              username: user.username,
              password: user.password,
            ),
          );
        }
      },
    );
  }
}
