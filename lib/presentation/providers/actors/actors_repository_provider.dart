import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jfrg_movies_app/insfraestructure/infraestructure.dart';

final actorsRepositoryProvider = Provider((ref) {
  return MovieRepositoryImp(MoviedbDatasourceImpl());
});
