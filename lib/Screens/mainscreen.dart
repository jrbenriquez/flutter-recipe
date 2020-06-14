import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Widgets/MainScreenWidgets.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;

  ScrollController _scrollController;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController
        .dispose(); // it is a good practice to dispose the controller
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
          MainTextHeader(),
          Container(
            height: 400.0,
            child: ListView(
              padding: EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecipeCard(
                  recipeImageURL:
                      "https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/a9ezar46fbxjvuyd8r2z/hjemmelaget-italiensk-pizza-med-bacon",
                  name: 'Pancakes',
                  cookTime: 10,
                  timeUnit: 'min',
                  energy: 420,
                  energyUnit: 'kcal',
                ),
                RecipeCard(
                  recipeImageURL:
                      "https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/a9ezar46fbxjvuyd8r2z/hjemmelaget-italiensk-pizza-med-bacon",
                  name: 'Pancakes',
                  cookTime: 10,
                  timeUnit: 'min',
                  energy: 420,
                  energyUnit: 'kcal',
                ),
                RecipeCard(
                  recipeImageURL:
                      "https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/a9ezar46fbxjvuyd8r2z/hjemmelaget-italiensk-pizza-med-bacon",
                  name: 'Pancakes',
                  cookTime: 10,
                  timeUnit: 'min',
                  energy: 420,
                  energyUnit: 'kcal',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 30.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: Hexcolor("#f9af9c"),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.elliptical(50, 18),
                topRight: Radius.elliptical(50, 18),
              ),
            ),
            child: Center(
              child: Text(
                "Add new recipe",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
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
