// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'movie_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
class MovieDto {
  int id;
  String backdropPath;
  String title;
  String posterPath;
  double voteAverage;
  MovieDto({
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.posterPath,
    required this.voteAverage,
  });

   factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDtoToJson(this);
}
