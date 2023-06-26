class ApiConstance {
  static const baseUrl = "https://api.themoviedb.org/3/";
  static const apiKey = "75509df943f96db36ab2728ff33d01ba";

  static const getNowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey";

  static const getPopularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";

  static const getTopRatedPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}
