import 'package:dio/dio.dart';
import 'package:movies/core/providers/dio/dio_provider.dart';
import 'package:movies/data/remote/dtos/discover_movies.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class MoviesApi {
  factory MoviesApi(Dio dio, {String baseUrl}) = _MoviesApi;

  @GET(
      'discover/movie?language=en-US&include_video=false&sort_by=popularity.desc')
  Future<HttpResponse<DiscoverMovies>> getDiscoverMovies(
      {@Query('page') int page = 1});
}
