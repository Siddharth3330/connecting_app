import 'package:connecting_app/pages/NotificationsPage.dart';
import 'package:connecting_app/pages/ProfilePage1.dart';
import 'package:connecting_app/pages/SearchPage.dart';
import 'package:connecting_app/pages/TimeLinePage.dart';
import 'package:connecting_app/pages/UploadPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn gSignIn = GoogleSignIn();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage>{

  bool isSignedIn= false;

  void intState(){
    super.initState();

    gSignIn.onCurrentUserChanged.listen((gSigninAccount) {
      controlSignIn(gSigninAccount);
    }, onError: (gError){
      print('Error occured  '+ gError);
    });

    gSignIn.signInSilently(suppressErrors: false).then((gSigninAccount){
      controlSignIn(gSigninAccount);
    }).catchError((gError){
      print('Error occured  '+ gError);
    });
  }


  controlSignIn(GoogleSignInAccount signInAccount) async{
  if (signInAccount != null){
       setState(() {
         isSignedIn = true;
       });
  }else{
    setState(() {
      isSignedIn = false;
    });
  }
  }

  logInUser(){
   gSignIn.signIn();

}

  logOutUser(){
    gSignIn.signOut();
  }

  Widget buildHomeScreen(){
    return RaisedButton.icon(onPressed: logOutUser, icon: Icon(Icons.close), label: Text('Sign Out'));
    //return Text('already singed in');
  /*return Scaffold(
    body: PageView(
      children: <Widget>[
         TimeLinePage(),
         SearchPage(),
        UploadPage(),
        NotificationsPage(),
        ProfilePage1(),
      ],
    ),
  );*/
  }

  //function to call our SignIn or SignUp activity
  Scaffold buildSignInScreen(){
         return Scaffold(

           body:/* Center(
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
                     Image(image: AssetImage("assets/images/google_logo.png"), height: 35.0),
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
           ),*/
           Container(
             alignment: Alignment.center,
             child: (Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 GestureDetector(
                   onTap: logInUser,
                   child: Container(
                     width: 270, height: 65,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/images/google_signin_button.png'),
                         fit: BoxFit.cover,
                       )
                     ),
                   ),
                 )
               ],
             )

             ),
           )

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

