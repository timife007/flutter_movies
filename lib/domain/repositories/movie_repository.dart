


import 'package:movies/core/data_state.dart';
import 'package:movies/domain/models/movie.dart';

abstract class MovieRepository{
  Future<DataState<List<Movie>>> getMovies();
}