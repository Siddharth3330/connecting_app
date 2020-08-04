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
           body: Center(
             child: OutlineButton(
               splashColor: Colors.grey,
               onPressed: () {},
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
               highlightElevation: 0,
               borderSide: BorderSide(color: Colors.grey),
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                 child: Row(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Text(
                         'Sign in with Google',
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.grey,
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ),
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

