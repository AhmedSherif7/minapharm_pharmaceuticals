import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String imageUrl;
  final String title;

  const Movie({
    required this.imageUrl,
    required this.title,
  });

  @override
  List<Object> get props => [
        imageUrl,
        title,
      ];
}
