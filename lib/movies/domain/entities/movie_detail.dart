import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath, overView, releaseDate, title;
  final int id, runTime;
  final double votAvarage;
  final List<Genres> genres;

  const MovieDetail({
    required this.backdropPath,
    required this.overView,
    required this.releaseDate,
    required this.title,
    required this.id,
    required this.runTime,
    required this.votAvarage,
    required this.genres,
  });

  @override
  List<Object?> get props => [backdropPath, overView, releaseDate, title, id, runTime, votAvarage, genres];
}
