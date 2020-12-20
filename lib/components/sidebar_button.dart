import 'package:flutter/material.dart';
import 'package:learncode/constants.dart';

class SidebarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print('Sidebar button pressed');
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12.0),
              blurRadius: 16.0,
            ),
          ],
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
      ),
    );
  }
}
