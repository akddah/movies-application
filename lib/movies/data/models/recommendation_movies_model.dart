import 'package:courses/movies/domain/entities/recommendation_movies.dart';

class RecommendationMoviesModel extends RecommendationMovie {
  const RecommendationMoviesModel(super.id, super.backdropPath);

  factory RecommendationMoviesModel.fromJson(Map<String, dynamic> json) => RecommendationMoviesModel(json["id"], json["backdrop_path"]);
}
