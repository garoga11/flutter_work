import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends  StatelessWidget{
  String pathImage = "https://www.mundopeliculas.tv/wp-content/uploads/2020/02/bart-simpson.jpg";
  String name = "Bart";
  String details = "10 Reviews - 54 photos  ";
  String comment = "TOTALLY recommended";

  String pathImage2 = "https://www.dosmanzanas.com/wp-content/uploads/lisa-simpson-1280x720.jpg";
  String name2 = "Lisa";
  String details2 = "4 Reviews - 15 photos  ";
  String comment2 = "It was awesome!";

  String pathImage3 = "https://okdiario.com/img/2019/09/05/mejores-frases-de-homer-simpson.jpg";
  String name3 = "Homero";
  String details3 = "16 Reviews - 10 photos  ";
  String comment3 = "There are donuts and beer.";

  String pathImage4 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnVyxm9raMcvUaXh2q-Q8ufYPaWTedGMxLnA&usqp=CAU";
  String name4 = "Marge";
  String details4 = "46 Reviews - 88 photos  ";
  String comment4 = "I enjoyed it! ";

  String pathImage5 = "https://upload.wikimedia.org/wikipedia/en/9/9d/Maggie_Simpson.png";
  String name5 = "Maggie";
  String details5 = "16 Reviews - 10 photos  ";
  String comment5 = "...(without words)";

  String pathImage6 = "https://i.pinimg.com/originals/ba/a8/55/baa855b8f62de22e83b125c57bdbcd27.jpg";
  String name6 = "Montgomery";
  String details6 = "5 Reviews - 5 photos  ";
  String comment6 = "It could be better";

  String pathImage7 = "https://s.pngkit.com/png/small/41-416703_the-simpsons-ned-flanders-ned-flanders.png";
  String name7 = "Ned";
  String details7 = "10 Reviews - 15 photos  ";
  String comment7 = "There are kind people ";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
          ),
          child: Text(
            "All reviews",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
                fontFamily: "RobotoMono",
            ),
          ),
        ),
        Review(pathImage, name, details,comment),
        Review(pathImage2, name2, details2, comment2),
        Review(pathImage3, name3, details3, comment3),
        Review(pathImage4, name4, details4, comment4),
        Review(pathImage5, name5, details5, comment5),
        Review(pathImage6, name6, details6, comment6),
        Review(pathImage7, name7, details7, comment7),
      ],
    );
  }
}