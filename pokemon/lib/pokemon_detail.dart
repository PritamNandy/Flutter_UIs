import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String details;
  final Color color;
  PokemonDetail({
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.details,
    @required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .13,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 15,
                ),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Pokemon',
                    color: Colors.white,
                    letterSpacing: 4,
                  ),
                ),
              ),
              Image(
                height: 300,
                image: AssetImage(image),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  details,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
