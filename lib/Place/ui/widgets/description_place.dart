import 'package:flutter/material.dart';
import '../../../widgets/star.dart';
import '../../../widgets/gradient_button.dart';

class DescriptionPlace extends StatelessWidget{

  String descriptionText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  String name = "Just a name place";
  double topDistance = 360.0;
  double stars;

  DescriptionPlace(this.name, this.stars, this.descriptionText);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    final namePlace = Container(
      margin: EdgeInsets.only(
        top: topDistance,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: "RobotoMono",
          fontSize: 30.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionText,
        style: TextStyle(
          fontFamily: "RobotoMono",
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          color: Colors.blueGrey,
        ),
      ),
    );

    final titleStars = Row(
      children: [
        namePlace,
        Row(
          children: [
            Star(Icons.star, topDistance, 25.0),
            Star(Icons.star, topDistance, 25.0),
            Star(Icons.star, topDistance, 25.0),
            Star(Icons.star_half, topDistance, 25.0),
            Star(Icons.star_border, topDistance, 25.0),
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        GradientButton("Action"),
      ],
    );
  }

}