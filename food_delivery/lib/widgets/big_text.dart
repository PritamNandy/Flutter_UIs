import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow? overflow;

  // ignore: use_key_in_widget_constructors
  BigText({
    this.color = Colors.black,
    required this.text,
    this.size = 20,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.w600,
          fontFamily: 'Radio Canada'),
    );
  }
}
