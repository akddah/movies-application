import 'package:courses/movies/data/models/genres_model.dart';
import 'package:courses/movies/domain/entities/movie_detail.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel({
    required super.backdropPath,
    required super.overView,
    required super.releaseDate,
    required super.title,
    required super.id,
    required super.runTime,
    required super.votAvarage,
    required super.genres,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) => MovieDetailModel(
        backdropPath: json["backdrop_path"],
        overView: json["overview"],
        releaseDate: json["release_date"],
        title: json["title"],
        id: json["id"],
        runTime: json["runtime"],
        votAvarage: json["vote_average"],
        genres: List<GenresModel>.from((json["genres"]).map((e) => GenresModel.fromJson(e))),
      );
}
