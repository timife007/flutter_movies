import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/presentation/states/movie_state.dart';
import 'package:movies/presentation/widgets/movie_list.dart';

class MovieListScreen extends ConsumerWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesProv = ref.watch(getMovieStateProvider);
    return moviesProv.when(data: (moviesProv) {
      return MovieList(movies: moviesProv.data!);
    }, error: (error, stack) {
      return const Center(
        child: Text('An error has occurred!'),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
