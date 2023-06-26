import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviewsUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviewsUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return baseMoviesRepository.getTopRatedMovies();
  }
}
