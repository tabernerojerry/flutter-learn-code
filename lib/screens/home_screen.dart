import 'package:flutter/material.dart';
import 'package:learncode/components/home_screen_navbar.dart';
import 'package:learncode/components/list/explore_course_list.dart';
import 'package:learncode/components/list/recent_course_list.dart';
import 'package:learncode/constants.dart';
import 'package:learncode/screens/sidebar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset> sidebarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sidebarAnimationController;

  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();

    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  /**
   * Clean Up to prevent memory leak
   */
  @override
  void dispose() {
    super.dispose();
    sidebarAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenNavBar(
                    triggerAnimation: () {
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });

                      sidebarAnimationController.forward();
                    },
                  ),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 25.0,
                      bottom: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Explore",
                          style: kTitle1Style,
                        ),
                      ],
                    ),
                  ),
                  ExploreCourseList(),
                ],
              ),
            ),
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      child: Container(
                        color: Color.fromRGBO(36, 38, 41, 0.4),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                      onTap: () {
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });

                        sidebarAnimationController.reverse();
                      },
                    ),
                  ),
                  SlideTransition(
                    position: sidebarAnimation,
                    child: SafeArea(
                      child: SidebarScreen(),
                      bottom: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
