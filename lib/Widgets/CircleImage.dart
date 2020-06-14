import 'package:flutter/material.dart';

class CircleNetworkImage extends StatelessWidget {
  final double radius;
  final String imageURL;

  CircleNetworkImage({this.radius, this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imageURL,
          ),
        ),
      ),
    );
  }
}
