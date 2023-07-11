class ApiConstance {
  static const baseUrl = "https://api.themoviedb.org/3/";
  static const apiKey = "75509df943f96db36ab2728ff33d01ba";

  static const getNowPlayingMoviesPath = "$baseUrl/movie/now_playing?api_key=$apiKey";

  static const getPopularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";

  static const getTopRatedPath = "$baseUrl/movie/top_rated?api_key=$apiKey";

  static const baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String path) => "$baseImageUrl$path";

  static String movieDetail(int movieId) => "${baseUrl}movie/$movieId?api_key=$apiKey";

  static String getRecommendedMovie(int movieId) => "${baseUrl}movie/$movieId/recommendations?api_key=$apiKey";
}
