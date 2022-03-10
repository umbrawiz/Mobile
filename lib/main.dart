import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Animal Listing")),
        body: ListView(
          shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget> [
            ProductBox(
                name: "Tanuki",
                description: "Lovely Tanuki",
                rarity: "Super Rare",
                image: "tanuki.png"
            ),
            ProductBox(
                name: "Cat",
                description: "Lovely Cat",
                rarity: "Common",
                image: "cat.png"
            ),
            ProductBox(
                name: "Shiba",
                description: "Lovely Shiba",
                rarity: "Common",
                image: "shiba.png"
            ),
            ProductBox(
                name: "Panda",
                description: "Lovely Panda",
                rarity: "Super Rare",
                image: "panda.png"
            ),
            ProductBox(
                name: "Tiger",
                description: "Lovely Tiger",
                rarity: "Rare",
                image: "tiger.png"
            ),
            ProductBox(
                name: "Phoenix",
                description: "Lovely Phoenix",
                rarity: "Unreal",
                image: "phoenix.png"
            ),
          ],
        )
    );
  }
}
class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() =>
      _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState( () {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState( () {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState( () {
      _rating = 3;
    });
  }
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,)),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key?key, required this.name, required this.description, required this.rarity, required this.image}) :
        super(key: key);
  final String name;
  final String description;
  final String rarity;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/appimages/" + image),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(this.description),
                              Text("Rarity: " + this.rarity),
                              RatingBox(),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}
