import 'package:dartz/dartz.dart';

import '../../../core/error/error_handler.dart';
import '../../../core/error/failures.dart';
import '../../../core/network/requests/auth_request.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../local/cache_data_source.dart';
import '../local/local_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LocalDataSource localDataSource;
  final CacheDataSource cacheDataSource;

  AuthRepositoryImpl(
    this.localDataSource,
    this.cacheDataSource,
  );

  @override
  Future<Either<Failure, User>> login(AuthRequest request) async {
    try {
      final user = await localDataSource.login(request);
      await cacheDataSource.cacheUserLogin(request);
      return Right(user);
    } catch (error) {
      return Left(
        ErrorHandler.mapExceptionToFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, NoOutput>> register(AuthRequest request) async {
    try {
      await localDataSource.register(request);
      return const Right(
        NoOutput(),
      );
    } catch (error) {
      return Left(
        ErrorHandler.mapExceptionToFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, NoOutput>> logout() async {
    try {
      await cacheDataSource.removeUserLogin();
      return const Right(
        NoOutput(),
      );
    } catch (error) {
      return Left(
        ErrorHandler.mapExceptionToFailure(error),
      );
    }
  }

  @override
  Future<Either<Failure, User?>> checkIfLoggedIn() async {
    try {
      final result = cacheDataSource.getUserLoginState();
      return Right(result);
    } catch (error) {
      return Left(
        ErrorHandler.mapExceptionToFailure(error),
      );
    }
  }
}
