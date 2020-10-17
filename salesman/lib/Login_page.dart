import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primaryColor: Colors.green,accentColor: Colors.black12,
  ),
  home: SignupPage(),
));

class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState()=>_SignupPageState();
    // TODO: implement createState



}
class _SignupPageState extends State <SignupPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final emailField = TextField(

      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.greenAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );




    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
           padding: const EdgeInsets.only(left:20.0,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 130,
                  child: Image.asset("assets/login.png",
                  fit: BoxFit.contain,),
                ),
                SizedBox(
                  height:15 ,
                ),
                emailField,
                SizedBox(
                  height: 15,
                ),
                passwordField,
                SizedBox(
                 height: 15,
                ),
                loginButon,
                SizedBox(height: 15,),
                //SignupPageButon,

                Container(
                  child: InkWell(
                    child: Text('Dont have account yet? signup here',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                    //onTap: ()=>launch(),
                  ),


                ),

              ],

            ),
          ),

        ),
      ),

    );




  }

}