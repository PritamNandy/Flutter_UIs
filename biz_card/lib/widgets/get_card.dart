import 'package:flutter/material.dart';

class GetCard extends StatelessWidget {
  const GetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.only(
        top: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.yellow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Prasun Nandy Pritam',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Full Stack Web Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email),
              SizedBox(
                width: 5,
              ),
              Text('pritamnandy84@yahoo.com'),
            ],
          )
        ],
      ),
    );
  }
}
