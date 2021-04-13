import 'package:flutter/material.dart';
import 'package:tidbisexample/User/ui/widgets/profile_background.dart';
import 'package:tidbisexample/User/ui/widgets/profile_place.dart';
import 'package:tidbisexample/User/ui/widgets/profile_place_list.dart';
import 'profile_header.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        ListView(
          children: [
            ProfilePlaceList()
          ],
        ),
        ProfileBackground(),
        ProfileHeader()
      ],
    );
  }
}