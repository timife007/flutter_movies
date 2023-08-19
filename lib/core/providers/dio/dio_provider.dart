import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio buildDioClient(BuildDioClientRef ref) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl,queryParameters: {
    'api_key': '693e82b69f08bfaa517a15be015bc36b'
  });

  dio.interceptors.addAll([]);

  return dio;
}

const String baseUrl = 'https://api.themoviedb.org/3/';