import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proudly/screens/home_screen.dart';
import 'package:proudly/screens/sidebar_screen.dart';


import 'constants.dart';
import 'models/course.dart';
import 'models/sidebar.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),


    );

  }

}


















