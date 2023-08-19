import 'package:movies/data/remote/dtos/movie_dto.dart';
import 'package:movies/domain/models/movie.dart';

extension ConvertToMovie on MovieDto {
  Movie toMovie() {
    return Movie(
        id: id,
        backdropPath: backdropPath,
        title: title,
        posterPath: posterPath,
        voteAverage: voteAverage);
  }
}
