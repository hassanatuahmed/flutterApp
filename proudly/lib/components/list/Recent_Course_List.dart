import 'package:flutter/material.dart';
import 'package:proudly/components/cards/recent_course_card.dart';
import 'package:proudly/models/course.dart';

class RecentCourseList extends StatefulWidget{


  @override
  _RecentCourseListState createState()=>_RecentCourseListState();

}
class _RecentCourseListState extends State<RecentCourseList>{
  Widget updateIndicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: recentCourses.map(
            (course){
          var index = recentCourses.indexOf(course);
          return Container(
            width: 7.0,
            height: 7.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),

            ),
          );
        },
      ).toList(),
    );
  }
  int currentPage=0;
  List<Container>indicators=[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 320,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,

                child: RecentCourseCard(
                  course: recentCourses[index],
                ),
              );
            },
            itemCount: recentCourses.length,
            controller: PageController(initialPage: 0,viewportFraction: 0.68),
            onPageChanged: (index){
              setState((){
                currentPage=index;});
            },


          ),
        ),
        updateIndicators(),
      ],
    );

  }


}