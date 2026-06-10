import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jfrg_movies_app/insfraestructure/infraestructure.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasourceImpl());
});
