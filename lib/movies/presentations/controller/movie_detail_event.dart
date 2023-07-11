import 'package:equatable/equatable.dart';

abstract class MovieDetailEvent extends Equatable {}

class GetMovieDetailEvent extends MovieDetailEvent {
  final int id;

  GetMovieDetailEvent(this.id);
  @override
  List<Object?> get props => [id];
}

class GetRecommendedEvent extends MovieDetailEvent {
  final int id;

  GetRecommendedEvent(this.id);
  @override
  List<Object?> get props => [id];
}
