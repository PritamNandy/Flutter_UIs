import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
  final List movies = [
    'Titanic',
    '3 Idiots',
    'Blade Runner',
    'Marvel Avengers',
    'I am Legend',
    'Interstellar',
    'Game of Thrones',
    'Vikings',
    'Rambo',
    'Thor',
    'Avatar',
    '300',
    'Up',
    'My name is Khan',
    'Kal ho na ho',
    'Aynabaji',
  ];

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
          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text(movies[index]),
            ),
          );
        },
      ),
    );
  }
}