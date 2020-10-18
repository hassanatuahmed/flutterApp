import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cards/explore_course_card.dart';
import 'components/cards/recent_course_card.dart';
import 'components/homescreennavbar.dart';
import 'components/list/Recent_Course_List.dart';
import 'components/list/explore_course_list.dart';
import 'components/searchfield_widget.dart';
import 'components/sidebar_button.dart';
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
      home: Scaffold(
        body:  Container(

            color: kBackgroundColor,

          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recents",
                        style: kLargeTitleStyle,
                      ),
                      SizedBox(height: 5.0,),
                      Text("23 courses, more coming",style: kSubtitleStyle,),
                    ],
                  ),

                ),


                SizedBox(
                  height: 5.0,
                ),
                RecentCourseList(),
                Padding(
                  padding: EdgeInsets.only(left:20.0,right: 20.0,top: 25.0,bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      Text("Explore",style: kTitle1Style,),
                    ],
                  ),
                ),
                ExploreCourseList(),
              ],
              ),
            )),
      ),


    );

  }

}














