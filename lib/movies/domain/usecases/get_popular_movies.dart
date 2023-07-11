import '../../../core/usecase/base_use_case.dart';
import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

class GetPopulerMoviesUseCase extends BaseUseCase<List<Movie>, NoPrams> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopulerMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoPrams prams) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
