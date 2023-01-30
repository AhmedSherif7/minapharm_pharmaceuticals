import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/movie_repository.dart';
import '../local/data_sources/movies_local_data_source.dart';
import '../remote/data_sources/movies_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MoviesRemoteDataSource remoteDataSource;
  final MoviesLocalDataSource localDataSource;

  MovieRepositoryImpl(
    this.remoteDataSource,
    this.localDataSource,
  );

  @override
  Future<Either<Failure, List<Movie>>> getMovies() async {
    try {
      final result = await remoteDataSource.getMovies();
      localDataSource.cacheMovies(result);
      return Right(result);
    } catch (error) {
      try {
        final result = await localDataSource.getMovies();
        return Right(result);
      } catch (error) {
        return const Right([]);
      }
    }
  }
}
