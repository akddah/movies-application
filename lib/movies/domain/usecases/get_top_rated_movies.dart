import 'package:courses/core/usecase/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviewsUseCase extends BaseUseCase<List<Movie>, NoPrams> {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviewsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoPrams noPrams) async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
