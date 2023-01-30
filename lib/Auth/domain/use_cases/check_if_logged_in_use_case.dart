import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class CheckIfLoggedInUseCase extends BaseUseCase<NoParameters, User?> {
  final AuthRepository repository;

  CheckIfLoggedInUseCase(this.repository);

  @override
  Future<Either<Failure, User?>> call(NoParameters input) async {
    return await repository.checkIfLoggedIn();
  }
}
