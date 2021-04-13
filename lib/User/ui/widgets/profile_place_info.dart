import 'package:flutter/material.dart';
import 'package:tidbisexample/Place/model/place.dart';
import 'package:tidbisexample/widgets/like_button.dart';


//ignore must_be_inmutable
class ProfilePlaceInfo extends StatelessWidget{
  Place place;
  ProfilePlaceInfo(this.place);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    final place = Text(
      this.place.name,
      style: TextStyle(
        fontFamily: "RobotoMono-Regular",
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

    final placeInfo = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.place.where,
            style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: "RobotoMono-Regular",
              fontSize: 12.0,
            ),
          ),
          Text(
            this.place.type,
            style: TextStyle(
                color: Colors.blueGrey,
                fontFamily: "RobotoMono-Regular",
                fontSize: 13.0,
            ),
          ),
        ],
      ),
    );

    final steps = Text(
      "Steps ${this.place.steps}",
      style: TextStyle(
          fontFamily: "RobotoMono-Regular",
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        color: Colors.cyan,
      ),
    );

    final card = Container(
      width: screenWidth*0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 0.5)
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            place,
            placeInfo,
            steps,
          ],
        ),
      ),
    );
    return Stack(
      alignment: Alignment(0.8, 1.25),
      children: [
        card,
        LikeButton()
      ],
    );
  }
}
