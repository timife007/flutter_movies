import 'package:movies/core/providers/dio/dio_provider.dart';
import 'package:movies/data/remote/movies_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'api_provider.g.dart';

@riverpod
MoviesApi apiService(ApiServiceRef ref) {
  final dio = ref.watch(buildDioClientProvider);
  return MoviesApi(dio);
}
