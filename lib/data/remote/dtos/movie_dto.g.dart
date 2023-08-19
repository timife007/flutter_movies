// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => MovieDto(
      id: json['id'] as int,
      backdropPath: json['backdropPath'] as String,
      title: json['title'] as String,
      posterPath: json['posterPath'] as String,
      voteAverage: (json['voteAverage'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieDtoToJson(MovieDto instance) => <String, dynamic>{
      'id': instance.id,
      'backdropPath': instance.backdropPath,
      'title': instance.title,
      'posterPath': instance.posterPath,
      'voteAverage': instance.voteAverage,
    };
