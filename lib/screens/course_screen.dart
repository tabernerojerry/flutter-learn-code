import 'package:flutter/material.dart';
import 'package:learncode/constants.dart';
import 'package:learncode/model/course.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({
    Key key,
    @required this.course,
  }) : super(key: key);

  final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: kBackgroundColor,
          child: Center(
            child: Text(widget.course.courseTitle),
          ),
        ),
      ),
    );
  }
}
