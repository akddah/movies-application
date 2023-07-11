import 'package:courses/movies/data/repository/movies_repository.dart';
import 'package:courses/movies/domain/repository/base_movies_repository.dart';
import 'package:courses/movies/domain/usecases/get_movie_detail.dart';
import 'package:courses/movies/domain/usecases/get_now_playing.dart';
import 'package:courses/movies/domain/usecases/get_popular_movies.dart';
import 'package:courses/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import 'package:courses/movies/domain/usecases/get_top_rated_movies.dart';
import 'package:courses/movies/presentations/controller/movies_bloc.dart';
import 'package:courses/tvs/presentations/controller/tvs_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../movies/data/datasource/movie_remote_data_source.dart';
import '../../movies/presentations/controller/movie_detail_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ////// Bloc
    sl.registerFactory<MoviesBloc>(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory<MovieDetailsBloc>(() => MovieDetailsBloc(sl(), sl()));
    sl.registerFactory<TvsBloc>(() => TvsBloc(0));

    ////// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopulerMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviewsUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationMoviesUseCase(sl()));

    ////// REPOSITORY
    sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));

    ////// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
  }
}
