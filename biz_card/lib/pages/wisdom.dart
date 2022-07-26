import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List<String> quotes = [
    'The purpose of our lives is to be happy.',
    'Life is what happens when you are busy making other plans.',
    'You only live once, but if you do it right, once is enough.',
    'Many of lifes failures are people who did not realize how close they were to success when they gave up.',
    'If you want to live a happy life, tie it to a goal, not to people or things.',
    'Your time is limited, so dont waste it living someone elses life. Dont be trapped by dogma which is living with the results of other peoples thinking.',
    'If life were predictable it would cease to be life, and be without flavor.',
    'The big lesson in life, baby, is never be scared of anyone or anything.',
    'Curiosity about life in all of its aspects, I think, is still the secret of great creative people.',
    'Turn your wounds into wisdom.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quotes[_index],
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            FlatButton.icon(
              color: Colors.amber,
              onPressed: () {
                _index + 1 < quotes.length
                    ? setState(() {
                        _index++;
                      })
                    : setState(() {
                        _index = 0;
                      });
              },
              icon: Icon(
                Icons.sunny,
              ),
              label: Text('Inspire Me'),
            )
          ],
        ),
      ),
    );
  }
}
