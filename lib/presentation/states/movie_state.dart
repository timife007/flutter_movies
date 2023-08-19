import 'package:movies/core/data_state.dart';
import 'package:movies/core/providers/repository/repository_provider.dart';
import 'package:movies/domain/models/movie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'movie_state.g.dart';


@riverpod
Future<DataState<List<Movie>>> getMovieState(GetMovieStateRef ref) {
  final movies = ref.watch(getMovieRepoProvider);
  return movies.getMovies();
}
