import 'package:flutter/material.dart';
import 'package:tidbisexample/User/ui/screens/profile.dart';
import 'profile_place.dart';
import 'package:tidbisexample/Place/model/place.dart';

//ignore must be_inmutable
class ProfilePlaceList extends StatelessWidget{

  Place place1 = Place('Little Pwagmattasquarmsettport', 'Springfield', 'Turistic place', '10,000');
  String place1Img = "https://static.wikia.nocookie.net/lossimpson/images/9/9c/Little_Pwagmattasquarmsettport1.jpg/revision/latest/scale-to-width-down/350?cb=20090930005244&path-prefix=es";

  Place place2 = Place("The Android's Dungeon & Baseball", 'Springfield', 'Card shop', '54,412');
  String place2Img = "https://static.wikia.nocookie.net/lossimpson/images/4/4d/The_Android%27s_Dungeon_%26_Baseball_Card_Shop.png/revision/latest/scale-to-width-down/350?cb=20150920230835&path-prefix=es";

  Place place3 = Place('The Gilded Truffle', 'Springfield', 'Restaurant', '20,455');
  String place3Img = "https://static.wikia.nocookie.net/simpsons/images/d/dd/Fabf01_20_goldener_trueffel.jpg/revision/latest/scale-to-width-down/350?cb=20140407012625";

  Place place4 = Place('Monstromart', 'Springfield', 'Supermarket', '10,899');
  String place4Img = "https://static.wikia.nocookie.net/simpsons/images/b/b4/Monstromart.jpg/revision/latest/scale-to-width-down/350?cb=20100826143509";


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        top: screenHeight*0.50,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Column(
        children: [
          ProfilePlace(place1Img, place1),
          ProfilePlace(place2Img, place2),
          ProfilePlace(place3Img, place3),
          ProfilePlace(place4Img, place4),
        ],
      ),

    );
  }

}
