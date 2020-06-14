import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Screens/detailscreen.dart';
import 'package:receipeapp/Utils/constants.dart';
import 'package:receipeapp/Widgets/CircleImage.dart';

class RecipeCard extends StatelessWidget {
  final String recipeImageURL;
  final String name;
  final int cookTime;
  final String timeUnit;
  final int energy;
  final String energyUnit;

  RecipeCard({
    this.recipeImageURL,
    this.name,
    this.cookTime,
    this.timeUnit,
    this.energy,
    this.energyUnit,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailScreen.id);
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 15.0,
        ),
        width: 300.0,
        child: RecipeCardStack(
          recipeImageURL: recipeImageURL,
          name: name,
          cookTime: cookTime,
          timeUnit: timeUnit,
          energy: energy,
          energyUnit: energyUnit,
        ),
      ),
    );
  }
}

class RecipeCardStack extends StatelessWidget {
  final String recipeImageURL;
  final String name;
  final int cookTime;
  final String timeUnit;
  final int energy;
  final String energyUnit;

  RecipeCardStack({
    this.recipeImageURL,
    this.name,
    this.cookTime,
    this.timeUnit,
    this.energy,
    this.energyUnit,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Container(
          height: 375.0,
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Hexcolor("#FFECD9"),
          ),
        ),
        Positioned(
          top: -13.0,
          left: -13.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          child: CircleNetworkImage(
            radius: 175,
            imageURL: recipeImageURL,
          ),
        ),
        Positioned(
          left: 10,
          bottom: 130.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: kMainTextStyle,
              ),
              Text(
                "$cookTime $timeUnit",
                style: kSubHeaderTextStyle,
              ),
            ],
          ),
        ),
        Positioned(
          right: 30.0,
          bottom: 20.0,
          child: Row(
            children: <Widget>[
              Text(
                "$energy",
                style: kSmallTextStyle,
              ),
              SizedBox(width: 5.0),
              Text(
                energyUnit,
                style: kSubHeaderTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MainTextHeader extends StatelessWidget {
  const MainTextHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Simple way to find",
              style: kMainTextStyle,
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
              style: kMainAccentTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
