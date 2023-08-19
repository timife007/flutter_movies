

import 'package:movies/core/providers/api/api_provider.dart';
import 'package:movies/data/repositories/movie_repo_impl.dart';
import 'package:movies/domain/repositories/movie_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'repository_provider.g.dart';

@riverpod
MovieRepository getMovieRepo(GetMovieRepoRef ref) {
  final apiClient = ref.watch(apiServiceProvider);
  return MovieRepositoryImpl(apiClient);
}