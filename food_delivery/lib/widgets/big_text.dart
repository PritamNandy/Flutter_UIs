import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow? overflow;
  double height;

  // ignore: use_key_in_widget_constructors
  BigText({
    this.color = Colors.black,
    required this.text,
    this.size = 0,
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
        fontSize: size == 0 ? Dimensions.font20 : size,
        color: color,
        fontFamily: 'Raleway',
        height: height,
      ),
    );
  }
}
