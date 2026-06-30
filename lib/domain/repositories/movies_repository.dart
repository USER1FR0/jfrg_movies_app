import 'package:jfrg_movies_app/domain/domain.dart';
import 'package:jfrg_movies_app/domain/entities/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
  Future<List<Movie>> getPopular({int page = 1});
  Future<List<Movie>> getUpcoming({int page = 1});
  Future<List<Movie>> getTopRated({int page = 1});
  Future<Movie> getMovieById(String id); // <-- Future<Movie>, ya corregido
  Future<List<Movie>> searchMovie(
    String query,
  ); // <-- singular, igual que datasource
  Future<List<Movie>> getSimilarMovie(String movieId); // <-- singular
  Future<List<dynamic>> getYoutubeVideoById(
    String movieId,
  ); // <-- nombre igual que datasource
  Future<List<Actor>> getActorByMovie(String movieId);
}
