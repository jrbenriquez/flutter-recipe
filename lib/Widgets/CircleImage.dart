import 'package:flutter/material.dart';

// TODO Maybe refactor this from a function to a full fledged widget?
// TODO So we can easily reuse the widget
Positioned CircleImage(String images, {double radius: 200.0}) {
  return Positioned(
      top: 0.0,
      left: 20.0,
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                images,
              ),
            )),
      ));
}
