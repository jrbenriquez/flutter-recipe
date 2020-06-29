import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
