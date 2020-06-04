import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App Title Test',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: "Search for recipe",
          ),
          keyboardType: TextInputType.text,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Simple way to find",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          Text(
            "Tasty recipes",
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            children: <Widget>[
              Container(
                  height: 350.0,
                  width: 250.0,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: Stack(
                    children: <Widget>[
                      recipeCard,
                      recipeThumbnail,
                    ],
                  )),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Text("Card"),
                height: 350.0,
                width: 10.0,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            color: Colors.deepOrangeAccent,
            height: 30.0,
            width: 200.0,
            child: Text(
              "Add new recipe",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/*Widgets */

final recipeCard = new Container(
  height: 350.0,
  margin: EdgeInsets.only(
    left: 10.0,
  ),
  decoration: BoxDecoration(
    color: Colors.deepOrangeAccent,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(8.0),
  ),
);

final recipeThumbnail = new Container(
  margin: EdgeInsets.symmetric(
    vertical: 16.0,
  ),
  alignment: FractionalOffset.centerLeft,
  child: Image(
    image: AssetImage("Images/recipe1.jpg"),
    height: 92.0,
    width: 92.0,
  ),
);
