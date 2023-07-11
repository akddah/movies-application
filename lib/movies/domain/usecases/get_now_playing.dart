import 'package:courses/core/error/failure.dart';
import 'package:courses/core/usecase/base_use_case.dart';
import 'package:courses/movies/domain/entities/movie.dart';
import 'package:courses/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>, NoPrams> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoPrams prams) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
