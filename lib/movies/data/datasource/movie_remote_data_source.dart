import 'package:courses/core/network/api_constance.dart';
import 'package:courses/core/network/error_message_model.dart';
import 'package:courses/movies/data/models/movie_detail_model.dart';
import 'package:courses/movies/data/models/movies_model.dart';
import 'package:courses/movies/data/models/recommendation_movies_model.dart';
import 'package:courses/movies/domain/entities/movie_detail.dart';
import 'package:courses/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/recommendation_movies.dart';
import '../../domain/usecases/get_movie_detail.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();

  Future<List<MoviesModel>> getPopularMovies();

  Future<List<MoviesModel>> getTopRatedMovies();

  Future<MovieDetailModel> getMovieDetail(MovieDetailPrams prams);

  Future<List<RecommendationMovie>> getRecommendationMovies(RecommendationMoviesPrams prems);
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final resopnse = await Dio().get(ApiConstance.getNowPlayingMoviesPath);
    if (resopnse.statusCode == 200) {
      return List<MoviesModel>.from((resopnse.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ErrorMessageModel.fromJson(resopnse.data);
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final resopnse = await Dio().get(ApiConstance.getPopularMoviesPath);
    if (resopnse.statusCode == 200) {
      return List<MoviesModel>.from((resopnse.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ErrorMessageModel.fromJson(resopnse.data);
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final resopnse = await Dio().get(ApiConstance.getTopRatedPath);
    if (resopnse.statusCode == 200) {
      return List<MoviesModel>.from((resopnse.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ErrorMessageModel.fromJson(resopnse.data);
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetail(MovieDetailPrams prams) async {
    final resopnse = await Dio().get(ApiConstance.movieDetail(prams.movieId));
    if (resopnse.statusCode == 200) {
      return MovieDetailModel.fromJson(resopnse.data);
    } else {
      throw ErrorMessageModel.fromJson(resopnse.data);
    }
  }

  @override
  Future<List<RecommendationMovie>> getRecommendationMovies(RecommendationMoviesPrams prams) async {
    final resopnse = await Dio().get(ApiConstance.getRecommendedMovie(prams.id));
    await Future.delayed(const Duration(seconds: 3));
    if (resopnse.statusCode == 200) {
      return List<RecommendationMoviesModel>.from(resopnse.data["results"].map((e) => RecommendationMoviesModel.fromJson(e)));
    } else {
      throw ErrorMessageModel.fromJson(resopnse.data);
    }
  }
}
