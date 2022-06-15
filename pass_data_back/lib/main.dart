import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    ),
  );
}

class ScreenOne extends StatefulWidget {
  ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool value = false;

  void changeData() {
    setState(() {
      value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: value
                ? Icon(
                    Icons.alarm,
                    size: 60,
                  )
                : Text(
                    'Data Refresh',
                  ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                String refresh = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const ScreenTwo()),
                  ),
                );
                if (refresh == 'refresh') {
                  changeData();
                }
              },
              child: const Text('Next Screen'),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() => Navigator.pop(context, 'refresh')),
          child: Text(
            'Go Back',
          ),
        ),
      ),
    );
  }
}
