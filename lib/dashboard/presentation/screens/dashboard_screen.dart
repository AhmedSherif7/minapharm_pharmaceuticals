import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../core/enums/enums.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../../../core/utils/extensions.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.logoutState == RequestState.success) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.login,
                (route) => false,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(LogOutEvent());
              },
              icon: const Icon(Icons.logout),
              tooltip: 'Sign out',
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello ${context.read<AuthBloc>().state.user?.username}',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: context.screenHeight() * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.movies);
                },
                child: const Text(
                  'Go to movies',
                  style: TextStyle(
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
