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
      backgroundColor: Colors.blueGrey.shade700,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(children: [
            movieCard(movies[index], context),
            Positioned(
              top: 10.0,
              child: movieImage(movies[index].images[0]),
            ),
          ]);
        },
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          movie.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text('Rating: ${movie.imdbRating}/10'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Released: ${movie.released}"),
                      Text(
                        "${movie.runtime}",
                        style: mainFontStyle(),
                      ),
                      Text(
                        "${movie.rated}",
                        style: mainFontStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) =>
                MovieListViewDetails(movieName: movie.title, movie: movie)),
          ),
        );
      },
    );
  }

  TextStyle mainFontStyle() {
    return TextStyle(
      fontSize: 15,
      color: Colors.grey,
    );
  }

  Widget movieImage(String imgUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imgUrl ?? ''),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
