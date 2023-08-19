// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:movies/data/remote/dtos/movie_dto.dart';

part 'discover_movies.g.dart';

@JsonSerializable(explicitToJson: true)
class DiscoverMovies {
  int page;
  int totalPages;
  int totalResults;
  List<MovieDto> moviesDto;
  DiscoverMovies({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.moviesDto,
  });

  factory DiscoverMovies.fromJson(Map<String, dynamic> json) =>
      _$DiscoverMoviesFromJson(json);
  Map<String, dynamic> toJson() => _$DiscoverMoviesToJson(this);
}
