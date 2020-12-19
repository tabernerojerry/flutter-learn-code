import 'package:flutter/material.dart';
import 'package:learncode/components/cards/recent_course_card.dart';
import 'package:learncode/model/course.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(
              course: recentCourses[1],
            ),
          ),
        ),
      ),
    );
  }
}
