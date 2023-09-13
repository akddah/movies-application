import 'package:courses/core/error/exceptions.dart';
import 'package:courses/core/error/failure.dart';
import 'package:courses/movies/domain/entities/movie_detail.dart';
import 'package:courses/movies/domain/entities/recommendation_movies.dart';
import 'package:courses/movies/domain/usecases/get_movie_detail.dart';
import 'package:courses/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/movie.dart';
import '../../domain/repository/base_movies_repository.dart';

import '../datasource/movie_remote_data_source.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    try {
      final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }

  @override
  getPopularMovies() async {
    try {
      final result = await baseMovieRemoteDataSource.getPopularMovies();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    try {
      final result = await baseMovieRemoteDataSource.getTopRatedMovies();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetail(MovieDetailPrams prams) async {
    final result = await baseMovieRemoteDataSource.getMovieDetail(prams);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationMovie>>> getRecommendationMovies(RecommendationMoviesPrams prams) async {
    final result = await baseMovieRemoteDataSource.getRecommendationMovies(prams);
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.message));
    }
  }
}
