import 'package:dio/dio.dart';

import '../../../../core/error/api_error_handler.dart';
import '../../../../core/network/api_constants.dart';
import '../models/movie_model.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MovieModel>> getMovies();
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final Dio dio;

  MoviesRemoteDataSourceImpl(this.dio);

  @override
  Future<List<MovieModel>> getMovies() async {
    final result = await dio.get(
      '${ApiConstants.mostPopularMovies}/${ApiConstants.apiKey}',
    );
    try {
      ApiErrorHandler.checkErrors(result);
    } catch (_) {
      rethrow;
    }

    return List.from(result.data['items'] as List).map((movieJson) {
      return MovieModel.fromJson(movieJson);
    }).toList();
  }
}
