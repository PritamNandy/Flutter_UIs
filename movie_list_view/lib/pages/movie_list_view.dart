import 'package:flutter/material.dart';
import 'package:movie_list_view/pages/list_details.dart';

import '../models/movie.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> movies = Movie.getMovies();

  MovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return movieCard(movies[index], context);
        },
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          elevation: 5,
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 54,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(movie.title),
                    Text('Rating: ${movie.imdbRating}/10'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Released: ${movie.released}"),
                    Text("${movie.runtime}"),
                    Text("${movie.rated}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
