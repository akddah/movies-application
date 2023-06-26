import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

class GetPopulerMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopulerMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return baseMoviesRepository.getPopularMovies();
  }
}
