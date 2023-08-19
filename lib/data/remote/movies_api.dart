import 'package:dio/dio.dart';
import 'package:movies/data/remote/dtos/discover_movies.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api.g.dart';


@RestApi()
abstract class MoviesApi {
  factory MoviesApi(Dio dio) = _MoviesApi;

  @GET('discover/movie?language=en-US&include_video=false&sort_by=popularity.desc')
  Future<HttpResponse<DiscoverMovies>> getDiscoverMovies({@Query('page') int page = 1});
}
