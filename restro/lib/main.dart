import 'package:flutter/material.dart';
import 'package:restro/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restro UI',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.freepik.com/free-vector/profile-icon-male-avatar-hipster-man-wear-headphones_48369-8728.jpg'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildTopChip('Indian', true),
                  buildTopChip('Bengali', false),
                  buildTopChip('Chinese', false),
                  buildTopChip('Thai', false),
                  buildTopChip('Mexican', false),
                  buildTopChip('Continental', false),
                  buildTopChip('Breakfast', false),
                  buildTopChip('Homemade', false),
                  buildTopChip('Desserts', false),
                  buildTopChip('Sweets', false),
                  buildTopChip('Spicy', false),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    buildItem(
                        'Biriyani',
                        '267 Reviews',
                        'https://www.tripsavvy.com/thmb/f-VZrcG8tCbTyAw3pcGI7RGBpx8=/2121x1414/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-639704020-7fc1d09875084524bada655b9ff7e678.jpg',
                        4.8,
                        context),
                    buildItem(
                        'Veg Thali',
                        '135 Reviews',
                        'https://www.arabnews.pk/sites/default/files/2020/08/21/2239296-1633656161.jpg',
                        4.3,
                        context),
                    buildItem(
                        'Chicken Paneer',
                        '186 Reviews',
                        'https://www.thespruceeats.com/thmb/XDmwhz9HXEMxhus08YhlIvTuAZI=/3865x2174/smart/filters:no_upscale()/paneer-makhani-or-shahi-paneer-indian-food-670906899-5878ef725f9b584db3d890f4.jpg',
                        4.76,
                        context)
                  ],
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

GestureDetector buildItem(String title, String subtitle, String url,
    double rating, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => Detail(url, title, subtitle),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Hero(
            tag: url,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: .7,
                  color: Colors.grey,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow.shade800,
                  child: Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container buildTopChip(String name, bool status) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2),
    child: Chip(
      label: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontFamily: 'poppins',
        ),
      ),
      backgroundColor: status ? Colors.yellow.shade800 : Colors.grey,
    ),
  );
}
