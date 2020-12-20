import 'package:flutter/material.dart';
import 'package:learncode/components/home_screen_navbar.dart';
import 'package:learncode/components/list/recent_course_list.dart';
import 'package:learncode/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recents",
                        style: kLargeTitleStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "23 courses, more coming",
                        style: kSubtitleStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RecentCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
