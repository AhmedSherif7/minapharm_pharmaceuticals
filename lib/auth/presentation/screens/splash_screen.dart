import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/enums.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/splash_cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SplashCubit, SplashState>(
          listenWhen: (previous, current) {
            return previous.loggedBeforeState != current.loggedBeforeState;
          },
          listener: (context, state) {
            if (state.loggedBeforeState == RequestState.success) {
              context.read<AuthBloc>().add(
                    LoginEvent(
                      state.username,
                      state.password,
                    ),
                  );
            } else if (state.loggedBeforeState == RequestState.error) {
              Navigator.of(context).pushReplacementNamed(Routes.login);
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) {
            return previous.loginState != current.loginState;
          },
          listener: (context, state) {
            if (state.loginState == RequestState.success) {
              Navigator.of(context).pushReplacementNamed(Routes.dashboard);
            } else if (state.loginState == RequestState.error) {
              Navigator.of(context).pushReplacementNamed(Routes.login);
            }
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Text(
            'Loading...',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorManager.primary,
                ),
          ),
        ),
      ),
    );
  }
}
