import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _tipPercentage = 0;
  int _personCounter = 0;
  double _billAmount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello'),
    );
  }
}
