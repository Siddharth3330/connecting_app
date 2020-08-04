import 'package:connecting_app/pages/NotificationsPage.dart';
import 'package:connecting_app/pages/ProfilePage1.dart';
import 'package:connecting_app/pages/SearchPage.dart';
import 'package:connecting_app/pages/TimeLinePage.dart';
import 'package:connecting_app/pages/UploadPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{

  bool isSignedIn= false;

  Scaffold buildHomeScreen(){
    //return Text('already singed in');
  return Scaffold(
    body: PageView(
      children: <Widget>[
         TimeLinePage(),
         SearchPage(),
        UploadPage(),
        NotificationsPage(),
        ProfilePage1(),
      ],
    ),
  );
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

