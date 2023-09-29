import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'movies_provider.dart';

final moviesSlideshowProvider = Provider<List<Movie>>(
  (ref) {
    final nowPlayingMoview = ref.watch(nowPlayingMoviesProvider);

    if (nowPlayingMoview.isEmpty) {
      return [];
    } else {
      return nowPlayingMoview.sublist(0, 6);
    }
  },
);
