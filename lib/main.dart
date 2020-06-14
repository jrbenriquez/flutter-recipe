import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Screens/detailscreen.dart';
import 'package:receipeapp/Widgets/CircleImage.dart';

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
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        DetailScreen.id: (context) => DetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static String id = 'home_screen';

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
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Simple way to find",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "tasty recipes",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  color: Hexcolor("#f9af9c"),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 350.0,
            padding: EdgeInsets.only(
              left: 60.0,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DetailScreen.id);
                  },
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    color: Hexcolor("#FFECD9"),
                    child: Stack(
                      children: <Widget>[
                        CenterRecipe(
                          "Pancakes",
                          "120",
                        ),
                        CircleImage(
                          "https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/a9ezar46fbxjvuyd8r2z/hjemmelaget-italiensk-pizza-med-bacon",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            color: Hexcolor("#f9af9c"),
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
        backgroundColor: Hexcolor("#f9af9c"),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/* Center recipe widget */

CenterRecipe(String recipe, String kcal) {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Hexcolor("#FFECD9"),
        ),
        child: Container(
          width: 500.0,
          height: 350.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Hexcolor("#FFECD9"),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Container(
                      padding: EdgeInsets.only(right: 140.0),
                      child: Text(
                        recipe,
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          fontSize: 33.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      bottom: 5.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 160.0),
                      child: Text(
                        kcal + " kcal",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
