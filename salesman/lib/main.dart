import 'dart:async';
import 'package:flutter/material.dart';
import 'package:salesman/signup_page.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    _SplashState  createState() => _SplashState();

  }
}



  class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
  // TODO: implement initState
  super.initState();
  startTime();
  }


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: initScreen(context),
  );
  }

  startTime() async {
  var duration = new Duration(seconds: 6);
  return new Timer(duration, route);
  }

  route() {
  Navigator.pushReplacement(context, MaterialPageRoute(
  builder: (context) => SignupPage()
  )
  );
  }

   initScreen(BuildContext context) {
   return Scaffold(
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Container(
  child: Image.asset("images/logo.png"),
  ),
  Padding(padding: EdgeInsets.only(top: 20.0)),
  Text(
  "Splash Screen",
  style: TextStyle(
  fontSize: 20.0,
  color: Colors.white
  ),
  ),
  Padding(padding: EdgeInsets.only(top: 20.0)),
  CircularProgressIndicator(
  backgroundColor: Colors.white70,
  strokeWidth: 1,
  )
  ],
  ),
  ),
  );
  }
  }