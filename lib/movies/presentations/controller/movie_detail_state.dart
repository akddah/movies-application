import 'package:courses/core/utils/enums.dart';
import 'package:courses/movies/domain/entities/movie_detail.dart';
import 'package:courses/movies/domain/entities/recommendation_movies.dart';
import 'package:equatable/equatable.dart';

class MovieDetailState extends Equatable {
  final RequestState movieDetailState, recommendedState;
  final MovieDetail? movieDetail;
  final List<RecommendationMovie>? recommendationMovie;
  final String movieDetailMsg, recommendationMsg;

  const MovieDetailState({
    this.movieDetailState = RequestState.isLoading,
    this.recommendedState = RequestState.isLoading,
    this.movieDetailMsg = "",
    this.recommendationMsg = "",
    this.movieDetail,
    this.recommendationMovie,
  });
  @override
  List<Object?> get props => [movieDetail, movieDetailState, recommendedState, movieDetailMsg, recommendationMsg, recommendationMovie];

  MovieDetailState copyWith({
    RequestState? movieDetailState,
    RequestState? recommendedState,
    MovieDetail? movieDetail,
    String? movieDetailMsg,
    List<RecommendationMovie>? recommendationMovie,
    String? recommendationMsg,
  }) =>
      MovieDetailState(
        movieDetailState: movieDetailState ?? this.movieDetailState,
        recommendedState: recommendedState ?? this.recommendedState,
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailMsg: movieDetailMsg ?? this.movieDetailMsg,
        recommendationMovie: recommendationMovie ?? this.recommendationMovie,
        recommendationMsg: recommendationMsg ?? this.recommendationMsg,
      );
}
