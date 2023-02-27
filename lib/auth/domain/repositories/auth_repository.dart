import 'package:dartz/dartz.dart';
import '../../../core/use_cases/base_use_case.dart';

import '../../../core/error/failures.dart';
import '../../../core/network/requests/auth_request.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(AuthRequest request);

  Future<Either<Failure, User?>> checkIfLoggedIn();

  Future<Either<Failure, NoOutput>> register(AuthRequest request);

  Future<Either<Failure, NoOutput>> logout();
}
