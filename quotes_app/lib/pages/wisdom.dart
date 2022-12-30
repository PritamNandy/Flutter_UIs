import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "When you have a dream, you've got to grab it and never let go.",
    "Nothing is impossible. The word itself says 'I'm possible!'",
    "There is nothing impossible to they who will try.",
    "The bad news is time flies. The good news is you're the pilot.",
    "Life has got all those twists and turns. You've got to hold on tight and off you go.",
    "Keep your face always toward the sunshine, and shadows will fall behind you.",
    "Be courageous. Challenge orthodoxy. Stand up for what you believe in. When you are in your rocking chair talking to your grandchildren many years from now, be sure you have a good story to tell.",
    "You make a choice: continue living your life feeling muddled in this abyss of self-misunderstanding, or you find your identity independent of it. You draw your own box.",
    "I just want you to know that if you are out there and you are being really hard on yourself right now for something that has happened ... it's normal. That is what is going to happen to you in life. No one gets through unscathed. We are all going to have a few scratches on us. Please be kind to yourselves and stand up for yourself, please.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "You define your own life. Don't let other people write your script.",
    "You are never too old to set another goal or to dream a new dream.",
    "At the end of the day, whether or not those people are comfortable with how you're living your life doesn't matter. What matters is whether you're comfortable with it.",
    "People tell you the world looks a certain way. Parents tell you how to think. Schools tell you how to think. TV. Religion. And then at a certain point, if you're lucky, you realize you can make up your own mind. Nobody sets the rules but you. You can design your own life.",
    "For me, becoming isn't about arriving somewhere or achieving a certain aim. I see it instead as forward motion, a means of evolving, a way to reach continuously toward a better self. The journey doesn't end."
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisdom Words'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              margin: EdgeInsets.all(70),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  quotes[_index % quotes.length],
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            TextButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue,
                ),
              ),
              onPressed: _showQuote,
              icon: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              label: Text(
                "Inspire Me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(
              flex: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}
