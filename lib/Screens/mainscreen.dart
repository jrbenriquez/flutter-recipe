import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Screens/detailscreen.dart';
import 'package:receipeapp/Widgets/CircleImage.dart';
import 'package:receipeapp/Widgets/Misc.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
