import 'package:jfrg_movies_app/domain/domain.dart';
import 'package:jfrg_movies_app/insfraestructure/models/moviedb/moviedb_detail.dart';
import 'package:jfrg_movies_app/insfraestructure/models/moviedb/moviedb_response.dart';

class MovieMaper {
  static Movie movieDbToEntity(MovieDb moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : '',
    genreIds: moviedb.genreIds,
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : '',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage.toDouble(),
    voteCount: moviedb.voteCount,
  );

  static Movie movieDetailToEntity(MovieDbDetail moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: moviedb.backdropPath.isNotEmpty
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : '',
    genreIds: moviedb.genres.map((g) => g.id).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: moviedb.posterPath.isNotEmpty
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : '',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}
