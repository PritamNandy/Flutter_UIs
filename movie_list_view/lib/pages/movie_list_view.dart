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

class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({super.key, required this.thumbnail});

  final String thumbnail;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.play_arrow_rounded,
              size: 100,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 80,
        )
      ],
    );
  }
}

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  const MovieDetailsHeaderWithPoster({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0]),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: MovieDetail(movie: movie),
          )
        ],
      ),
    );
  }
}

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${movie.year} . ${movie.genre}'.toUpperCase(),
          style: TextStyle(
            color: Colors.cyan.shade900,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          '${movie.title}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32,
          ),
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
              children: [
                TextSpan(
                  text: movie.plot,
                ),
                TextSpan(text: 'More...')
              ]),
        )
      ],
    );
  }
}

class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key, required this.poster});
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        //borderRadius: BorderRadius.all(10),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(poster),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
