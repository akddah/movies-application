import 'package:courses/core/network/api_constance.dart';
import 'package:courses/core/network/error_message_model.dart';
import 'package:courses/movies/data/models/movies_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();

  Future<List<MoviesModel>> getPopularMovies();

  Future<List<MoviesModel>> getTopRatedMovies();
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
}
