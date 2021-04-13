import 'package:flutter/material.dart';
import 'package:tidbisexample/User/ui/widgets/user_info.dart';
import 'package:tidbisexample/User/ui/widgets/buttons_bar.dart';

class ProfileHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = Text(
      "Profile",
      style: TextStyle(
        fontFamily: "RobotoMono-Regular",
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 65.0
      ),
      child: Column(
        children: [
          Row(
            children: [
              title,
            ],
          ),
          UserInfo("https://www.dictionary.com/e/wp-content/uploads/2018/03/sideshow-bob-300x300.jpg", "Sideshow bob", "sideshowbob@gmail.com"),
          ButtonsBar()
        ],
      ),
    );
  }
}