import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget{
  String title = "Welcome";
  double backgroundHeight;

  GradientBackground(this.title, this.backgroundHeight);

  @override
  Widget build(BuildContext context) {

    final background = Container(
      height: backgroundHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFEEFB54),
            Color(0xFF7AEEE0),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 0.5],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "RobotoMono",
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment(0.0, 0.0),
    );

    return background;
  }
}