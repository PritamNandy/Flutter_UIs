import 'package:flutter/material.dart';
import 'package:pokemon/dummy_datas.dart';
import 'package:pokemon/pokemon_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .1,
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/ball.png'),
                ),
              ),
              Container(
                child: Text(
                  'Pokémon',
                  style: TextStyle(
                    fontFamily: 'Pokemon',
                    fontSize: 50,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: DUMMY_INFOS
                      .map(
                        (pokemon) => Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.withOpacity(.1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PokemonDetail(
                                    id: pokemon.id,
                                    name: pokemon.name,
                                    image: pokemon.image,
                                    details: pokemon.details,
                                    color: pokemon.color,
                                  ),
                                ),
                              );
                            },
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    height: 120,
                                    image: AssetImage(pokemon.image),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    pokemon.name,
                                    style: TextStyle(
                                      fontFamily: 'Pokemon',
                                      fontSize: 20,
                                      letterSpacing: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
