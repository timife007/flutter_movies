import 'package:flutter/cupertino.dart';
import 'package:movies/domain/models/movie.dart';
import 'package:movies/presentation/widgets/movie_item.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieItem(movies[index]);
            }));
  }
}
