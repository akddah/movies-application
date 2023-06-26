import 'package:courses/core/error/failure.dart';
import 'package:courses/movies/domain/entities/movie.dart';
import 'package:courses/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movie>>> ececute() async {
    return baseMoviesRepository.getNowPlayingMovies();
  }
}
