import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tidbisexample/User/bloc/user_bloc.dart';
import 'package:tidbisexample/app_cupertino.dart';
import 'package:tidbisexample/widgets/generic_button.dart';
import 'package:tidbisexample/widgets/gradent_background.dart';


class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    // TODO: implement createState
    return _SignInScreen();
  }
}
class _SignInScreen extends State<SignInScreen>{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context){
    userBloc = BlocProvider.of(context);
    return _handleUserSession();
  }
  Widget _handleUserSession(){
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData || snapshot.hasError){
            return SignInGoogleUI();
          }else{
            return AppsCupertino();
          }
        }
    );
  }

  // ignore: non_constant_identifier_names
  Widget SignInGoogleUI(){
    return Scaffold(
      body :Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground("", null),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("welcome\nThis is your Review App",
                  style: TextStyle(
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                GenericButton(buttonText: "Login with gmail", onPressed: (){
                  userBloc.signOut();
                  userBloc.signIn();
                },
                  width: null,
                  height: 50,
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}