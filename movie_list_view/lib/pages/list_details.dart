import 'package:flutter/material.dart';
import 'package:movie_list_view/models/movie.dart';
import 'package:movie_list_view/pages/movie_list_view.dart';

class MovieListViewDetails extends StatelessWidget {
  const MovieListViewDetails(
      {super.key, required this.movieName, required this.movie});

  final String movieName;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        title: Text("Movie: ${movieName}"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[0]),
          MovieDetailsHeaderWithPoster(movie: movie),
        ],
      ),
    );
  }
}
