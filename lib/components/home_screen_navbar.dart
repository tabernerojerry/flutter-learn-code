import 'package:flutter/material.dart';
import 'package:learncode/components/searchfield_widget.dart';
import 'package:learncode/components/sidebar_button.dart';
import 'package:learncode/constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
            width: 16.0,
          ),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage(
              'asset/images/profile.png',
            ),
          ),
        ],
      ),
    );
  }
}
