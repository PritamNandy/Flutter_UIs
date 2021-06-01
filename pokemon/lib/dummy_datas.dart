import 'package:flutter/material.dart';

import './model/pokemon.dart';

const DUMMY_INFOS = const [
  Pokemon(
    id: '1',
    name: 'Pikachu',
    image: 'assets/images/1.png',
    details:
        'Pikachu is a species of Pokémon, fictional creatures that appear in an assortment of media of the Pokémon franchise by The Pokémon Company. Pikachu is a yellow mouse-like Pokémon with powerful electrical abilities.',
    color: Colors.yellow,
  ),
  Pokemon(
    id: '2',
    name: 'Chikorita',
    image: 'assets/images/2.png',
    details:
        'Chikorita, known as Chicorita in Japan, is a Pokémon species in Nintendo and Game Freak\'s Pokémon franchise. Chikorita is featured in the Pokémon anime series, most commonly under the ownership of the main character Ash Ketchum.',
    color: Colors.lightGreen,
  ),
  Pokemon(
    id: '3',
    name: 'Snorlax',
    image: 'assets/images/3.png',
    details:
        'Snorlax, known in Japan as Kabigon, is a Pokémon species, a type of Pocket Monster, in Nintendo and Game Freak\'s Pokémon franchise.',
    color: Colors.green,
  ),
  Pokemon(
    id: '4',
    name: 'Armaldo',
    image: 'assets/images/4.png',
    details:
        'Armaldo is a Rock/Bug-type Fossil Pokémon introduced in Generation III.',
    color: Colors.blue,
  ),
  Pokemon(
    id: '5',
    name: 'Chimchar',
    image: 'assets/images/5.png',
    details: 'Chimchar is the Fire-type Starter Pokémon of the Sinnoh region.',
    color: Colors.orange,
  ),
  Pokemon(
    id: '6',
    name: 'Eevee',
    image: 'assets/images/6.png',
    details:
        'Eevee is a Pokémon species in Nintendo and Game Freak\'s Pokémon franchise. Created by Ken Sugimori, it first appeared in the video games Pokémon Red and Blue. It has later appeared in various merchandise, spinoff titles, and animated and printed adaptations of the franchise.',
    color: Colors.deepOrange,
  ),
  Pokemon(
    id: '7',
    name: 'Totodile',
    image: 'assets/images/7.png',
    details: 'Totodile is the Water-type Starter Pokémon of the Johto region.',
    color: Colors.lightBlueAccent,
  ),
  Pokemon(
    id: '8',
    name: 'Psyduck',
    image: 'assets/images/8.png',
    details:
        'Psyduck, known as Koduck in Japan, is a Pokémon species in Nintendo and Game Freak\'s Pokémon franchise. Created by Ken Sugimori, Psyduck first appeared in the video games Pokémon Red and Blue and later in sequels.',
    color: Colors.yellow,
  ),
  Pokemon(
    id: '9',
    name: 'Bulbasaur',
    image: 'assets/images/9.png',
    details:
        'Bulbasaur, known as Fushigidane in Japan, is the first Pokémon in Nintendo and Game Freak\'s Pokémon franchise\'s monster dictonary, called a Pokédex. Designed by Atsuko Nishida, Bulbasaur debuted in Pokémon Red and Blue as a Starter Pokémon.',
    color: Colors.blueGrey,
  ),
  Pokemon(
    id: '10',
    name: 'Charizard',
    image: 'assets/images/10.png',
    details:
        'Charizard, known in Japan as Lizardon, is a Pokémon in Nintendo and Game Freak\'s Pokémon franchise. Created by Atsuko Nishida, Charizard first appeared in the video games Pokémon Red and Blue and subsequent sequels.',
    color: Colors.deepOrangeAccent,
  ),
  Pokemon(
    id: '11',
    name: 'Unknown',
    image: 'assets/images/11.png',
    details: 'NOT FOUND ANYTHING',
    color: Colors.lightGreenAccent,
  ),
  Pokemon(
    id: '12',
    name: 'Charmander',
    image: 'assets/images/12.png',
    details:
        'Charmander, known as Hitokage in Japan, is a Pokémon species in Nintendo\'s and Game Freak\'s Pokémon franchise.',
    color: Colors.deepOrangeAccent,
  ),
  Pokemon(
    id: '13',
    name: 'Squirtle',
    image: 'assets/images/13.png',
    details:
        'Squirtle, known as Zenigame in Japan, is a Pokémon species in Nintendo and Game Freak\'s Pokémon franchise. It was designed by Atsuko Nishida. Its name was changed from Zenigame to Squirtle during the English localization of the series in order to give it a "clever and descriptive name."',
    color: Colors.lightBlueAccent,
  ),
  Pokemon(
    id: '14',
    name: 'Vaporeon',
    image: 'assets/images/14.png',
    details:
        'Vaporeon is a Water Pokémon which evolves from Eevee. It is vulnerable to Grass and Electric moves. Vaporeon\'s strongest moveset is Water Gun & Hydro Pump and it has a Max CP of 3,114.',
    color: Colors.lightBlue,
  ),
];
