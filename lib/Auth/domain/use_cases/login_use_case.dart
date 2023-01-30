import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/network/requests/auth_request.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase extends BaseUseCase<AuthRequest, User> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(AuthRequest input) async {
    return await repository.login(input);
  }
}
