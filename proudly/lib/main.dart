import 'package:flutter/material.dart';

import 'components/cards/recent_course_card.dart';
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
                  padding: EdgeInsets.symmetric(horizontal:20.0),
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
                  height: 20.0,
                ),
                RecentCourseList(),
              ],
              ),
            )),
      ),


    );
  }

}

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

class HomeScreenNavBar extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SidebarButton(),
        SearchFieldWidget(),

        Icon(
          Icons.notifications,
          color: kPrimaryLabelColor,
        ),

        SizedBox(
          height: 16,
        ),
        CircleAvatar(
          radius: 18.0,
          backgroundImage: AssetImage('asset/images/profile.jpg'),
        ),
      ],
    ),
  );
}
}



class SearchFieldWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.0, right: 33.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20.0,
                ),
                border: InputBorder.none,
                hintText: "Search for courses",
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchTextStyle,
              onChanged: (newText) {
                print(newText);
              },
            ),
          ),
        ),
      ),
    );
  }

}
class SidebarButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
    onPressed: () {
      print("Sidebar button pressed");
       },
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    constraints: BoxConstraints(
      maxWidth: 40.0,
      maxHeight: 40.0,
  ),
      child: Container(
       decoration: BoxDecoration(
      color: Colors.white,
         borderRadius: BorderRadius.circular(14.0),
     boxShadow: [
       BoxShadow(
  color: kShadowColor,
  offset: Offset(0, 12),
  blurRadius: 16.0,
  )
  ],
  ),
  child: Image.asset(
  'asset/icons/icon-sidebar.png',
  color: kPrimaryLabelColor,
  ),
  padding: EdgeInsets.symmetric(
  horizontal: 12.0,
  vertical: 14.0,),),);
  }
}



class SidebarRow extends StatelessWidget {
  SidebarRow({@required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: item.background,

            ),
            child: item.icon,
        ),
        SizedBox(width: 12),
        Container(

          child: Center(
            child: Text(item.title,
              style: kCalloutLabelStyle,
            ),
          ),
        ),
      ],
    );

  }
}