import 'package:flutter/material.dart';
import 'package:restro/main.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  homeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Chip(
        backgroundColor: Colors.yellow.shade900,
        padding: EdgeInsets.only(top: 10, right: 60, left: 60, bottom: 10),
        label: Text(
          'Book Now',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.lironboylston.com/wp-content/uploads/2020/12/WBC_7095.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.4),
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
              ),
            ),
          ),
          buildAvatar(
              75,
              'https://www.shareicon.net/data/512x512/2016/09/15/829452_user_512x512.png',
              context),
          buildAvatar(
              55,
              'https://www.shareicon.net/data/512x512/2016/09/15/829452_user_512x512.png',
              context),
          buildAvatar(
              35,
              'https://www.shareicon.net/data/512x512/2016/09/15/829452_user_512x512.png',
              context),
          Positioned(
            top: MediaQuery.of(context).size.height * .37,
            left: 15,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                '4.5',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'poppins',
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .44,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.2),
                  ),
                  child: Text(
                    '175 reviews, 10 friends',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Brunch',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItemRow(context),
                    buildItemRow(context),
                    buildItemRow(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildItemRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, right: 20, left: 20),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjl8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vegetables',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 170,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Positioned buildAvatar(double leftPosition, String url, BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * .37,
    left: leftPosition,
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(url),
        ),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
    ),
  );
}
