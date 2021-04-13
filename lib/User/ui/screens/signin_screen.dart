import 'package:flutter/material.dart';
import 'package:tidbisexample/widgets/gradient_button.dart';
import 'package:tidbisexample/widgets/gradent_background.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SignInGoogleUI();
  }
  Widget SignInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground(" " , null),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome \nThis is your Travel App",
                style: TextStyle(
                  fontFamily: "RobotoMono-Regular",
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                )

                )
              ],
            ),
          )

        ],
      ),
    );

  }

}