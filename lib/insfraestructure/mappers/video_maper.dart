import 'package:jfrg_movies_app/domain/entities/video.dart';
import 'package:jfrg_movies_app/insfraestructure/models/moviedb/movie_videos_response.dart';

class VideoMapper {
  static movieDbVideoToEntity(Result video) => Video(
    id: video.id,
    name: video.name,
    youtubeKey: video.key,
    publishedAt: video.publishedAt,
  );
}
