import '../entities/recommendation_movies.dart';
import '../usecases/get_movie_detail.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../usecases/get_recommendation_movies_use_case.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetail>> getMovieDetail(MovieDetailPrams prams);

  Future<Either<Failure, List<RecommendationMovie>>> getRecommendationMovies(RecommendationMoviesPrams prams);
}
