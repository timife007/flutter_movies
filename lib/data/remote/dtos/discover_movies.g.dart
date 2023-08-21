// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverMovies _$DiscoverMoviesFromJson(Map<String, dynamic> json) =>
    DiscoverMovies(
      page: json['page'] as int?,
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
      moviesDto: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscoverMoviesToJson(DiscoverMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.moviesDto?.map((e) => e.toJson()).toList(),
    };
