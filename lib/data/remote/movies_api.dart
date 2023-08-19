import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


@RestApi()
abstract class MoviesApi {
  factory MoviesApi(Dio dio) = _MoviesApi;

  // @GET('')
  
}
