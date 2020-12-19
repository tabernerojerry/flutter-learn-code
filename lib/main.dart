import 'package:flutter/material.dart';
import 'package:learncode/components/sidebar_row.dart';
import 'package:learncode/model/sidebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SidebarRow(
            item: sidebarItems[0],
          ),
        ),
      ),
    );
  }
}
