import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../core/managers/route_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        return previous.loggedBeforeState != current.loggedBeforeState;
      },
      listener: (context, state) {
        if (state.loggedBefore) {
          Navigator.of(context).pushReplacementNamed(
            Routes.dashboard,
          );
        }
      },
    );
  }
}
