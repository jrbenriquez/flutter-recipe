import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'mainscreen.dart';

class AddRecipe extends StatefulWidget {
  static String id = 'add_recipe';

  @override
  _AddRecipeState createState() => _AddRecipeState();
}

//Todo fix the shape of the buttons + the elevation.

class _AddRecipeState extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: () => {Navigator.pushNamed(context, MainScreen.id)},
                    child: Container(
                      alignment: Alignment(-0.9, 0.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Hexcolor('#F9AF9C'),
                  height: 60.0,
                  width: 411.0,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: GestureDetector(
                child: CircleAvatar(
                  child: Container(
                    child: Icon(
                      Icons.add_a_photo,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  radius: 80,
                  backgroundColor: Hexcolor('#F9AF9C'),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Input(),
          ],
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 0.0,
        ),
        margin: EdgeInsets.only(top: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50.0),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment(-1, 0.0),
                  child: Text(
                    'Title',
                    style: TextStyle(
                      color: Hexcolor('#F9AF9C'),
                      fontSize: 20,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter a title...",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment(-1, 0.0),
                  child: Text(
                    'Time to make',
                    style: TextStyle(
                      color: Hexcolor('#F9AF9C'),
                      fontSize: 20,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter time to make...",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ingredients',
              style: TextStyle(
                color: Hexcolor('#F9AF9C'),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            //Todo can extract this widget later for the next entries.
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "All purpose flour",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 180.0,
                ),
                Container(
                  child: Text(
                    "2 cups",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            new Container(
              padding:
                  const EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
              child: new RaisedButton(
                elevation: 100.0,
                hoverColor: Hexcolor("#FFECD9"),
                disabledColor: Colors.grey.shade200,
                child: const Text(
                  '+ add ingredient',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Steps',
              style: TextStyle(
                color: Hexcolor('#F9AF9C'),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Todo use this row as a "steps widget" to add for each new step.
            Row(
              children: <Widget>[
                Text(
                  "*",
                  style: TextStyle(
                    color: Hexcolor('#F9AF9C'),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Preheat the oven to 450 degrees",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            new Container(
              padding:
                  const EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
              child: new RaisedButton(
                elevation: 100.0,
                hoverColor: Hexcolor("#FFECD9"),
                disabledColor: Colors.grey.shade200,
                child: const Text(
                  '+ add step',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                padding:
                    const EdgeInsets.only(left: 40.0, right: 30.0, top: 20.0),
                child: new RaisedButton(
                  hoverColor: Hexcolor("#FFECD9"),
                  disabledColor: Hexcolor('#F9AF9C'),
                  child: const Text(
                    'Add new recipe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: null,
                )),
          ],
        ),
      ),
    );
  }
}
