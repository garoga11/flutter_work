import 'package:flutter/material.dart';
import 'package:tidbisexample/review_list.dart';
import 'review.dart';
import 'description_place.dart';
import 'gradent_background.dart';
import 'card_img_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  String dummieText = "Springfield is the name of the fictional city where the American cartoon television series The Simpsons is set. The city of Springfield functions as a universe where its inhabitants, the characters of the series, face the basic problems of modern society.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("SPRINGFIELD", 4.5, dummieText),
                ReviewList(),
              ],
            ),
            GradientBackground("Welcome"),
            CardImageList(),
          ],
        ),
      ),
    );
  }
}
