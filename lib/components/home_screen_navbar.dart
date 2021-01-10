import 'package:flutter/material.dart';
import 'package:learncode/components/searchfield_widget.dart';
import 'package:learncode/components/sidebar_button.dart';
import 'package:learncode/constants.dart';
import 'package:learncode/screens/profile_screen.dart';

class HomeScreenNavBar extends StatelessWidget {
  final Function triggerAnimation;

  const HomeScreenNavBar({
    @required this.triggerAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage(
                'asset/images/profile.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
