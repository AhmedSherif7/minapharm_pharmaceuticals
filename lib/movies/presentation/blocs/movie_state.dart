part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final RequestState getMoviesState;
  final String getMoviesError;
  final List<Movie> movies;

  const MovieState({
    this.getMoviesState = RequestState.loading,
    this.getMoviesError = '',
    this.movies = const [],
  });

  MovieState copyWith({
    RequestState? getMoviesState,
    String? getMoviesError,
    List<Movie>? movies,
  }) {
    return MovieState(
      getMoviesState: getMoviesState ?? this.getMoviesState,
      getMoviesError: getMoviesError ?? this.getMoviesError,
      movies: movies ?? this.movies,
    );
  }

  @override
  List<Object> get props => [
        getMoviesState,
        getMoviesError,
        movies,
      ];
}
