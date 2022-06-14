import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => PageOne(),
      '/detail': (context) => PageTwo(image: '', name: ''),
    },
  ));
}

class Photo {
  final String image;
  final String name;

  Photo(this.image, this.name);
}

class PageOne extends StatelessWidget {
  final List<Photo> photos = [
    Photo(
      'https://images.pexels.com/photos/11991865/pexels-photo-11991865.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Abraham Pérez',
    ),
    Photo(
      'https://images.pexels.com/photos/12019099/pexels-photo-12019099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Tatiana Abramova',
    ),
    Photo(
      'https://images.pexels.com/photos/12344767/pexels-photo-12344767.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Anna Moreva',
    ),
    Photo(
      'https://images.pexels.com/photos/11181151/pexels-photo-11181151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Gantas Vaičiulėnas',
    ),
    Photo(
      'https://images.pexels.com/photos/12365569/pexels-photo-12365569.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'eberhard grossgasteiger',
    ),
    Photo(
      'https://images.pexels.com/photos/12125024/pexels-photo-12125024.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Usman ARJ',
    ),
    Photo(
      'https://images.pexels.com/photos/12199830/pexels-photo-12199830.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'Filippo Dal Re',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: photos.length,
        itemBuilder: (ctx, index) {
          return new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageTwo(
                      image: photos[index].image, name: photos[index].name),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(photos[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  final String? image;
  final String? name;

  const PageTwo({Key? key, @required this.image, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(image!),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                name!,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
