import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Utils/constants.dart';

class IngredientsEntry extends StatelessWidget {
  IngredientsEntry({this.name, this.quantity, this.unit});

  final String name;
  final String quantity;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 10,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Text(
              name,
              style: kIngredientsNameStyle,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${quantity}',
                style: kSecondaryTextStyle,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                unit,
                style: kSecondaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StepEntry extends StatelessWidget {
  final String text;
  final bool initialStep;

  StepEntry({this.text, this.initialStep: false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 25,
        left: 10.0,
        top: initialStep ? 10.0 : 40.0,
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 5.0,
            width: 5.0,
            decoration: BoxDecoration(
              color: Hexcolor('#F9AF9C'),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 40.0,
          ),
          Flexible(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
