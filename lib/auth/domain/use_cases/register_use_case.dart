import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/network/requests/auth_request.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase extends BaseUseCase<AuthRequest, NoOutput> {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<Failure, NoOutput>> call(AuthRequest input) async {
    return await repository.register(input);
  }
}
