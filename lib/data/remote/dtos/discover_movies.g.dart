// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverMovies _$DiscoverMoviesFromJson(Map<String, dynamic> json) =>
    DiscoverMovies(
      page: json['page'] as int,
      totalPages: json['totalPages'] as int,
      totalResults: json['totalResults'] as int,
      moviesDto: (json['moviesDto'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscoverMoviesToJson(DiscoverMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'moviesDto': instance.moviesDto.map((e) => e.toJson()).toList(),
    };
