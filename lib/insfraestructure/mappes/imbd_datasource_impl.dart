import 'package:jfrg_movies_app/domain/domain.dart';

class MovieRepositorieImpl implements MoviesRepository {
  @override
  Future<List<Movie>> getMovieById(String id) {
    // TODO: implement getMovieById
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    // TODO: implement getNowPlaying
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    // TODO: implement getPopular
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getSimilarMovies(String movieId) {
    // TODO: implement getSimilarMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getYoutubeTrailers(String movieId) {
    // TODO: implement getYoutubeTrailers
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> searchMovies(String query) {
    // TODO: implement searchMovies
    throw UnimplementedError();
  }
}
