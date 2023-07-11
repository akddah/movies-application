import 'package:courses/core/error/failure.dart';
import 'package:courses/core/usecase/base_use_case.dart';
import 'package:courses/movies/domain/entities/recommendation_movies.dart';
import 'package:courses/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetRecommendationMoviesUseCase extends BaseUseCase<List<RecommendationMovie>, RecommendationMoviesPrams> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<RecommendationMovie>>> call(RecommendationMoviesPrams prams) async {
    return await baseMoviesRepository.getRecommendationMovies(prams);
  }
}

class RecommendationMoviesPrams {
  final int id;

  RecommendationMoviesPrams(this.id);
}
