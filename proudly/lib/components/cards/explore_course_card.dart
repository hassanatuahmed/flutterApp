import 'package:flutter/cupertino.dart';
import 'package:proudly/models/course.dart';

import '../../constants.dart';

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