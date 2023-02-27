import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/presentation/blocs/splash_cubit/splash_cubit.dart';
import '../../auth/presentation/screens/login_screen.dart';
import '../../auth/presentation/screens/register_screen.dart';
import '../../auth/presentation/screens/splash_screen.dart';
import '../../dashboard/presentation/screens/dashboard_screen.dart';
import '../../movies/presentation/blocs/movie_bloc.dart';
import '../../movies/presentation/screens/movies_screen.dart';
import '../services/services.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String movies = '/movies';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (_) => sl<SplashCubit>()..checkIfUserLoggedIn(),
              child: const SplashScreen(),
            );
          },
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) {
            return const LoginScreen();
          },
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) {
            return const RegisterScreen();
          },
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) {
            return const DashboardScreen();
          },
        );
      case Routes.movies:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (_) => sl<MovieBloc>()..add(MoviesFetchedEvent()),
              child: const MoviesScreen(),
            );
          },
        );
    }
    return null;
  }
}
