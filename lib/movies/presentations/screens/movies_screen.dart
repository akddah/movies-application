import '../../data/datasource/movie_remote_data_source.dart';
import '../../data/repository/movies_repository.dart';
import '../../domain/repository/base_movies_repository.dart';
import '../../domain/usecases/get_now_playing.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/movie.dart';

class MoviesScreens extends StatefulWidget {
  const MoviesScreens({super.key});

  @override
  State<MoviesScreens> createState() => _MoviesScreensState();
}

class _MoviesScreensState extends State<MoviesScreens> {
  List<Movie> list = [];
  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
    BaseMoviesRepository baseMoviesRepository = MoviesRepository(baseMovieRemoteDataSource);
    final result = await GetNowPlayingMoviesUseCase(baseMoviesRepository).ececute();
    result.fold((l) => null, (r) => list = r);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Text(list[index].title),
      ),
    );
  }
}
