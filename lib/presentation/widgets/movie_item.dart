import 'package:flutter/material.dart';
import 'package:movies/core/providers/dio/dio_provider.dart';
import 'package:movies/domain/models/movie.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;
  const MovieItem(this.movie, {super.key});

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  bool _isFav = false;

  void _changeFav() {
    setState(() {
      _isFav = !_isFav;
    });
  }

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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      imageBaseUrl + widget.movie.posterPath),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: IconButton(
                              onPressed: _changeFav,
                              icon: _isFav
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border_outlined)),
                        )
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.movie.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
