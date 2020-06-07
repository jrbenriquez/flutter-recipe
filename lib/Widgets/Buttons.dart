import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
