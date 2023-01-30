import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../../Auth/data/local/cache_data_source.dart';
import '../../Auth/data/local/local_data_source.dart';
import '../../Auth/data/repositories/auth_repository_impl.dart';
import '../../Auth/domain/repositories/auth_repository.dart';
import '../../Auth/domain/use_cases/check_if_logged_in_use_case.dart';
import '../../Auth/domain/use_cases/login_use_case.dart';
import '../../Auth/domain/use_cases/logout_use_case.dart';
import '../../Auth/domain/use_cases/register_use_case.dart';
import '../../Auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../Auth/presentation/blocs/splash_cubit/splash_cubit.dart';
import '../../movies/data/local/data_sources/movies_local_data_source.dart';
import '../../movies/data/remote/data_sources/movies_remote_data_source.dart';
import '../../movies/data/repositories/movie_repository_impl.dart';
import '../../movies/domain/repositories/movie_repository.dart';
import '../../movies/domain/use_cases/get_movies_use_case.dart';
import '../../movies/presentation/blocs/movie_bloc.dart';
import '../constants/constants.dart';
import '../network/api_constants.dart';

final sl = GetIt.instance;

Future<void> initServices() async {
  // external
  sl.registerLazySingleton<Dio>(() => DioService.init());
  final sharedPreferences = await SharedPreferences.getInstance();
  // await sharedPreferences.clear();
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );
  final database = await DatabaseService.init();
  sl.registerLazySingleton<Database>(
    () => database,
  );

  // data sources
  sl.registerLazySingleton<LocalDataSource>(
    () => LocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<CacheDataSource>(
    () => CacheDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<MoviesRemoteDataSource>(
    () => MoviesRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<MoviesLocalDataSource>(
    () => MoviesLocalDataSourceImpl(sl()),
  );

  // repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sl(),
      sl(),
    ),
  );
  sl.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      sl(),
      sl(),
    ),
  );

  // use cases
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sl()),
  );
  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(sl()),
  );
  sl.registerLazySingleton<CheckIfLoggedInUseCase>(
    () => CheckIfLoggedInUseCase(sl()),
  );
  sl.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(sl()),
  );
  sl.registerLazySingleton<GetMoviesUseCase>(
    () => GetMoviesUseCase(sl()),
  );

  // blocs
  sl.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      sl(),
      sl(),
      sl(),
    ),
  );
  sl.registerFactory<MovieBloc>(
    () => MovieBloc(
      sl(),
    ),
  );
  sl.registerLazySingleton<SplashCubit>(
    () => SplashCubit(
      sl(),
    ),
  );
}

class DatabaseService {
  static Future<Database> init() async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath${DatabaseConstants.databaseName}';

    // await deleteDatabase(path);

    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await Future.value([
          db.execute(
            'CREATE TABLE ${DatabaseConstants.userTableName} ('
            '${DatabaseConstants.usernameColumn} TEXT UNIQUE,'
            '${DatabaseConstants.passwordColumn} TEXT'
            ')',
          ),
          db.execute(
            'CREATE TABLE ${DatabaseConstants.movieTableName} ('
            '${DatabaseConstants.movieTitleColumn} TEXT,'
            '${DatabaseConstants.movieImageColumn} TEXT'
            ')',
          ),
        ]);
      },
    );

    return database;
  }
}

class DioService {
  static Dio init() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: 15 * 1000, // 15 seconds
        receiveTimeout: 15 * 1000, // 15 seconds
        receiveDataWhenStatusError: true,
      ),
    );
    _addDioLogger(dio);

    return dio;
  }

  static void _addDioLogger(Dio dio) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}
