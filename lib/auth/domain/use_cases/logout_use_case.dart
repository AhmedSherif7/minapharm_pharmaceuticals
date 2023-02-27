import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../repositories/auth_repository.dart';

class LogoutUseCase extends BaseUseCase<NoParameters, NoOutput> {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  @override
  Future<Either<Failure, NoOutput>> call(NoParameters input) async {
    return await repository.logout();
  }
}
