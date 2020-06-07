import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:receipeapp/Utils/constants.dart';
import 'package:receipeapp/Widgets/CircleImage.dart';

class DetailScreen extends StatefulWidget {
  static String id = 'detail_screen';
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Hexcolor('#FFECD9'),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              DetailHeaderCard(),
              DetailInfoCard(),
            ],
          ),
        ));
  }
}

class DetailInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 30.0,
        ),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50.0),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Pancakes',
                  style: kHeaderTextStyle,
                ),
                Text(
                  '10 mins',
                  style: kSecondaryTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ingredients',
              style: kSubHeaderTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                IngredientsEntry(
                  name: 'All Purpose Flour',
                  quantity: '2',
                  unit: 'cups',
                ),
                IngredientsEntry(
                  name: 'Milk',
                  quantity: '2',
                  unit: 'cups',
                ),
                IngredientsEntry(
                  name: 'Eggs',
                  quantity: '2',
                  unit: 'cups',
                ),
                IngredientsEntry(
                  name: 'Blueberries',
                  quantity: '2',
                  unit: 'cups',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Steps', style: kSubHeaderTextStyle),
            Column(
              children: <Widget>[
                StepEntry(
                  text: 'Preheat the oven to 450 degrees',
                  initialStep: true,
                ),
                StepEntry(
                    text:
                        'Add the basil leaves (but keep some for the presentation) and blend to a green paste.'),
                StepEntry(text: 'Preheat the oven to 450 degrees'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
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

class DetailHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 25.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleButton(
                  icon: Icons.keyboard_arrow_left,
                ),
                CircleButton(
                  icon: Icons.share,
                ),
              ],
            ),
          ),
          //TODO Need to figure out how to do overlapping oversized photos so we can follow the design
          Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
            ),
            child: Center(
              child: CircleImage(
                "https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/a9ezar46fbxjvuyd8r2z/hjemmelaget-italiensk-pizza-med-bacon",
                radius: 225.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  CircleButton({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: CircleBorder(),
        ),
        child: IconButton(
            icon: Icon(this.icon),
            color: Hexcolor('#F9AF9C'),
            iconSize: 40,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
