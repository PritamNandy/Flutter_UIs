import 'package:flutter/material.dart';

class GetAvatar extends StatelessWidget {
  const GetAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          border: Border.all(width: 2, color: Colors.yellow),
          image: DecorationImage(
            image: NetworkImage('https://prasunnandy.me/images/mypic.jpg'),
          )),
    );
  }
}
