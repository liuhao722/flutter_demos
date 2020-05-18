import 'package:flutter/material.dart';

class NavigationIconView {
  //item
  final BottomNavigationBarItem item;

  //title
  final String title;

  //icon path
  final String iconPath;

  //actived icon path
  final String activeIconPath;

  NavigationIconView({@required this.title,
    @required this.iconPath,
    @required this.activeIconPath})
      : item = BottomNavigationBarItem(
//      backgroundColor: Colors.cyanAccent,
      icon: Image.asset(
        iconPath,
        width: 20.0,
        height: 20.0,
      ),
      activeIcon: Image.asset(
        activeIconPath,
        width: 20.0,
        height: 20.0,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.blue,
            fontSize: 13.0,
            fontStyle: FontStyle.normal,
            fontWeight:FontWeight.w900, //  粗体
        ),
      ));
}
