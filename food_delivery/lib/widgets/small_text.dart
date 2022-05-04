import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow? overflow;
  double height;

  // ignore: use_key_in_widget_constructors
  SmallText({
    this.color = Colors.black,
    required this.text,
    this.size = 15,
    this.height = 1.2,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: 'Raleway',
        height: height,
      ),
    );
  }
}
