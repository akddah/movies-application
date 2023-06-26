import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreId;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.backdropPath,
    required this.genreId,
    required this.overview,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [id, title, backdropPath, genreId, overview, voteAverage, releaseDate];
}
