import 'package:flutter/material.dart';
import '../widgets/review_list.dart';
import '../widgets/description_place.dart';
import '../../../widgets/gradent_background.dart';
import '../widgets/card_img_list.dart';

//ignore: must_be_inmutable
class Home extends StatelessWidget{

  String dummieText = "Springfield is the name of the fictional city where the American cartoon television series The Simpsons is set. The city of Springfield functions as a universe where its inhabitants, the characters of the series, face the basic problems of modern society.";

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("SPRINGFIELD", 4.5, dummieText),
            ReviewList(),
          ],
        ),
        GradientBackground("Welcome",300),
        CardImageList(),
      ],
    );
  }
}