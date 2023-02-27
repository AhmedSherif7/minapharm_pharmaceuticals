import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'core/managers/route_manager.dart';
import 'core/managers/theme_manager.dart';
import 'core/services/services.dart';
import 'core/utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  Bloc.observer = MyBlocObserver();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (_) => sl<AuthBloc>(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Minapharm Pharmaceuticals',
            theme: ThemeManager.lightTheme,
            onGenerateRoute: RouteGenerator.getRoute,
          ),
        );
      },
    );
  }
}
