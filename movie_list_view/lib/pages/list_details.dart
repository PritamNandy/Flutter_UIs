import 'package:flutter/material.dart';
import 'package:movie_list_view/models/movie.dart';

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
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
        ),
      ),
    );
  }
}
