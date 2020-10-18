import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';
import 'components/homescreennavbar.dart';
import 'components/list/Recent_Course_List.dart';
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
class ExploreCourseList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw
    return Container(
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(10.0),
      ),
        height: 100,
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index)
    {
      return Padding(
        child: ExploreCourseCard(
          course: exploreCourses[index],
        ),
        padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
      );
    },
        ),

          );
  }

}
class ExploreCourseCard  extends StatelessWidget{
  final Course course;


  ExploreCourseCard({@required this.course});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 100.0,
      width: 280.0,
      decoration: BoxDecoration(gradient: course.background,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.only(left:32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
              Expanded(
            child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.courseSubtitle,
              style: kCardSubtitleStyle,
            ),
            SizedBox(height: 6.0),
            Text(
              course.courseTitle,
              style: kCardTitleStyle,
            ),
          ],
        ),
      ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('asset/illustrations/${course.illustration}',
                  fit: BoxFit.cover,height: 100,),

                  ],
            ),
      ],
      ),
      ),

    );
  }

}












