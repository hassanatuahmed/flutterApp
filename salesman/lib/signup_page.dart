import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.greenAccent),
  home: SignupPage(),

));

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(

        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Text('welcome'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ],
      ),
    );



  }

}