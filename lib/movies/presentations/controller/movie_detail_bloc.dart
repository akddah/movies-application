import 'dart:async';

import 'package:courses/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/enums.dart';
import '../../domain/usecases/get_movie_detail.dart';
import 'movie_detail_event.dart';
import 'movie_detail_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUseCase getMovieDetailUseCase;
  final GetRecommendationMoviesUseCase getRecommendationMoviesUseCase;
  MovieDetailsBloc(this.getMovieDetailUseCase, this.getRecommendationMoviesUseCase) : super(const MovieDetailState()) {
    on<GetMovieDetailEvent>(_getMovieDetail);
    on<GetRecommendedEvent>(_getRecommendation);
  }

  Future<void> _getMovieDetail(GetMovieDetailEvent event, Emitter<MovieDetailState> emit) async {
    final result = await getMovieDetailUseCase(MovieDetailPrams(event.id));
    result.fold(
      (l) => emit(state.copyWith(movieDetailMsg: l.message, movieDetailState: RequestState.isError)),
      (r) => emit(state.copyWith(movieDetail: r, movieDetailState: RequestState.isLoaded)),
    );
  }

  FutureOr<void> _getRecommendation(GetRecommendedEvent event, Emitter<MovieDetailState> emit) async {
    final result = await getRecommendationMoviesUseCase(RecommendationMoviesPrams(event.id));
    result.fold(
      (l) => emit(state.copyWith(recommendationMsg: l.message, recommendedState: RequestState.isError)),
      (r) => emit(state.copyWith(recommendationMovie: r, recommendedState: RequestState.isLoaded)),
    );
  }
}
