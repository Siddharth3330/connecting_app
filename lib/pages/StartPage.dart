import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'HomePage.dart';

class Start extends StatefulWidget {
  //4 second Delay code start
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() async {
    var duration= Duration(seconds: 4);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement( context, MaterialPageRoute(
        builder: (context) => HomePage(),
    ));
  }
// 4 second delay code ends with calling HomePage widget
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Theme.of(context).accentColor, Theme.of(context).primaryColor ],
            )),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Connect",
                  style: TextStyle(
                    fontSize: 92, color: Colors.black, fontFamily: 'Signatra',
                  ),)
              ],),
          )
      );
  }
}
