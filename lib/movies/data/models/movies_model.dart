import 'package:courses/movies/domain/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.releaseDate,
    required super.backdropPath,
    required super.genreId,
    required super.overview,
    required super.voteAverage,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        id: json["id"],
        title: json["title"],
        releaseDate: json["release_date"],
        backdropPath: json["backdrop_path"],
        genreId: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        voteAverage: json["vote_average"].toDouble(),
      );
}
