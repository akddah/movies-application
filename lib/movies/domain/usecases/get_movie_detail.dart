import '../../../core/error/failure.dart';
import '../../../core/usecase/base_use_case.dart';
import '../entities/movie_detail.dart';
import '../repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMovieDetailUseCase extends BaseUseCase<MovieDetail, MovieDetailPrams> {
  final BaseMoviesRepository baseMovieDetailRepository;

  GetMovieDetailUseCase(this.baseMovieDetailRepository);
  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailPrams prams) async {
    return await baseMovieDetailRepository.getMovieDetail(prams);
  }
}

class MovieDetailPrams extends Equatable {
  final int movieId;

  const MovieDetailPrams(this.movieId);

  @override
  List<Object?> get props => [movieId];
}
