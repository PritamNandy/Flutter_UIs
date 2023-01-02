import 'package:flutter/material.dart';
import './pages/movie_list_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListView(),
    ),
  );
}
