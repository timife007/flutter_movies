import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movies/core/data_state.dart';
import 'package:movies/core/extension.dart';
import 'package:movies/data/remote/movies_api.dart';
import 'package:movies/domain/models/movie.dart';
import 'package:movies/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MoviesApi moviesApi;
  MovieRepositoryImpl(this.moviesApi);
  @override
  Future<DataState<List<Movie>>> getMovies() async {
    final httpResponse = await moviesApi.getDiscoverMovies();
    try {
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.moviesDto
            .map((movieDto) => movieDto.toMovie())
            .toList());
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
