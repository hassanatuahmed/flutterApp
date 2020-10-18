import 'package:flutter/cupertino.dart';
import 'package:proudly/components/cards/explore_course_card.dart';
import 'package:proudly/models/course.dart';

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