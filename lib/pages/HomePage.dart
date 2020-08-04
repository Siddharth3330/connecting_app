import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{

  bool isSignedIn= false;

  Widget buildHomeScreen(){
    return Text('already singed in');
  }

  //fuction to call our Signin or Signup activity
  Scaffold buildSignInScreen(){
         return Scaffold(
           body: Text('SignIn Screen', style: TextStyle(fontSize: 40),),
         );
  }

  @override
  Widget build(BuildContext context) {
    if (isSignedIn){

      return buildHomeScreen();
    }
    else{

      return buildSignInScreen();
    }
  }
}

