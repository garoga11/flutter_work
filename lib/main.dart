import 'package:flutter/material.dart';
import 'app_cupertino.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/User/bloc/user_bloc.dart';
import 'package:tidbisexample/User/ui/screens/signin_screen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
import 'package:tidbisexample/review_list.dart';
import 'review.dart';
import 'description_place.dart';
import 'gradent_background.dart';
import 'card_img_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        home: SignInScreen()
        ),
        bloc: UserBloc(),
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
