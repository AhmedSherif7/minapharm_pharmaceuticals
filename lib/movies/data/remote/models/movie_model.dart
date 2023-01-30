import '../../../domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.imageUrl,
    required super.title,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      imageUrl: json['image'],
      title: json['title'],
    );
  }
}
