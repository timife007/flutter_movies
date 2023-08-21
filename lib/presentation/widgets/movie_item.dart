import 'package:flutter/material.dart';
import 'package:movies/core/providers/dio/dio_provider.dart';
import 'package:movies/domain/models/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  const MovieItem(this.movie, {super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO:Impl details
      },
      child: Card(
          elevation: 4, // Controls the shadow intensity
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(16.0), // Adjust the corner radius here
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: FractionallySizedBox(
                      widthFactor: 1,
                      heightFactor: 0.5,
                      child: Image.network(
                        imageBaseUrl + movie.posterPath,
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}
