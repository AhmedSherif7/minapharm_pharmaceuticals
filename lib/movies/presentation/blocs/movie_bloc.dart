import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums/enums.dart';
import '../../../core/error/failures.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../../domain/entities/movie.dart';
import '../../domain/use_cases/get_movies_use_case.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetMoviesUseCase getMoviesUseCase;

  MovieBloc(
    this.getMoviesUseCase,
  ) : super(const MovieState()) {
    on<MoviesFetchedEvent>(_getMovies);
  }

  Future<void> _getMovies(
      MoviesFetchedEvent event, Emitter<MovieState> emit) async {
    emit(
      state.copyWith(
        getMoviesState: RequestState.loading,
      ),
    );

    final result = await getMoviesUseCase(
      const NoParameters(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getMoviesState: RequestState.error,
            getMoviesError: failure.toError().message,
          ),
        );
      },
      (movies) {
        emit(
          state.copyWith(
            getMoviesState: RequestState.success,
            movies: movies,
          ),
        );
      },
    );
  }
}
