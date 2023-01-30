import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetMoviesUseCase extends BaseUseCase<NoParameters, List<Movie>> {
  final MovieRepository repository;

  GetMoviesUseCase(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters input) async {
    return await repository.getMovies();
  }
}
