import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proudly/components/searchfield_widget.dart';
import 'package:proudly/components/sidebar_button.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({@required this.triggerAnimation});

  final Function triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation:triggerAnimation,
          ),
          SearchFieldWidget(),

          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),

          SizedBox(
            height: 10,
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