import '../../../../core/constants/constants.dart';
import '../../../domain/entities/movie.dart';

class MovieLocalModel extends Movie {
  const MovieLocalModel({
    required super.title,
    required super.imageUrl,
  });

  factory MovieLocalModel.fromJson(Map<String, dynamic> json) {
    return MovieLocalModel(
      title: json[DatabaseConstants.movieTitleColumn],
      imageUrl: json[DatabaseConstants.movieImageColumn],
    );
  }
}
