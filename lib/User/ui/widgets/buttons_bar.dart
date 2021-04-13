import 'package:flutter/material.dart';
import 'circule_button.dart';


class ButtonsBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: 0.0,
      vertical: 10.0,
    ),
      child: Row(
        children: [
          CircleButton(true, Icons.turned_in_not, 20, Color.fromRGBO(255, 255,255,1)),
          CircleButton(true, Icons.card_travel, 20, Color.fromRGBO(255, 255,255,0.5)),
          CircleButton(false, Icons.add, 40, Color.fromRGBO(255, 255,255,1)),
          CircleButton(true, Icons.mail_outline, 20, Color.fromRGBO(255, 255,255,0.5)),
          CircleButton(true, Icons.person, 20, Color.fromRGBO(255, 255,255,0.5)),
        ],
      ),
    );
  }
}