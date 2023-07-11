import 'dart:async';
import 'dart:developer';

import 'package:courses/core/usecase/base_use_case.dart';

import '../../../core/utils/enums.dart';
import '../../domain/usecases/get_now_playing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_popular_movies.dart';
import '../../domain/usecases/get_top_rated_movies.dart';
import 'movies_event.dart';
import 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopulerMoviesUseCase getPopulerMoviesUseCase;
  final GetTopRatedMoviewsUseCase getTopRatedMoviewsUseCase;
  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopulerMoviesUseCase,
    this.getTopRatedMoviewsUseCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingEvent>(_getNowPlayingMovies);
    on<GetPopularEvent>(_getPopularMovies);
    on<GetTopRatedEvent>(_getTopRatedMovies);
  }

  Future<void> _getNowPlayingMovies(GetNowPlayingEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase(NoPrams());
    result.fold(
      (l) => emit(state.copyWith(nowPlayingMessage: l.message, nowPlayingState: RequestState.isError)),
      (r) => emit(state.copyWith(nowPlayingMovies: r, nowPlayingState: RequestState.isLoaded)),
    );
  }

  Future<void> _getPopularMovies(GetPopularEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopulerMoviesUseCase(NoPrams());
    result.fold(
      (l) => emit(state.copyWith(popularMessage: l.message, popularState: RequestState.isError)),
      (r) => emit(state.copyWith(popularMovies: r, popularState: RequestState.isLoaded)),
    );
  }

  Future<void> _getTopRatedMovies(GetTopRatedEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviewsUseCase(NoPrams());
    result.fold(
      (l) => emit(state.copyWith(topRatedMessage: l.message, topRatedState: RequestState.isError)),
      (r) => emit(state.copyWith(topRatedMovies: r, topRatedState: RequestState.isLoaded)),
    );
  }
}
