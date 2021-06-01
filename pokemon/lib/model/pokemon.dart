import "package:flutter/material.dart";

class Pokemon {
  final String id;
  final String name;
  final String image;
  final String details;
  final Color color;

  const Pokemon(
      {@required this.id,
      @required this.name,
      @required this.image,
      @required this.details,
      @required this.color});
}
