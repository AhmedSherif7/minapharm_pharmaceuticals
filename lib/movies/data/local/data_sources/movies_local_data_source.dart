import 'package:sqflite/sqflite.dart';

import '../../../../core/constants/constants.dart';
import '../../../domain/entities/movie.dart';
import '../models/movie_local_model.dart';

abstract class MoviesLocalDataSource {
  Future<void> cacheMovies(List<Movie> movies);

  Future<List<MovieLocalModel>> getMovies();
}

class MoviesLocalDataSourceImpl implements MoviesLocalDataSource {
  final Database database;

  MoviesLocalDataSourceImpl(this.database);

  @override
  Future<void> cacheMovies(List<Movie> movies) async {
    await _clearMovies();
    await database.transaction((txn) async {
      for (var movie in movies) {
        await txn.rawInsert(
          'INSERT INTO ${DatabaseConstants.movieTableName} ('
          '${DatabaseConstants.movieTitleColumn}, '
          '${DatabaseConstants.movieImageColumn}'
          ') '
          'VALUES('
          '"${movie.title}", '
          '"${movie.imageUrl}"'
          ')',
        );
      }
    });
  }

  Future<void> _clearMovies() async {
    await database.rawDelete('DELETE FROM ${DatabaseConstants.movieTableName}');
  }

  @override
  Future<List<MovieLocalModel>> getMovies() async {
    final result = await database.rawQuery(
      'SELECT * FROM ${DatabaseConstants.movieTableName}',
    );

    return result.map((e) {
      return MovieLocalModel.fromJson(e);
    }).toList();
  }
}
