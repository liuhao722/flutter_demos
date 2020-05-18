import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

abstract class AppColors {
  //应用主题色
  static const APP_THEME = 0xff63ca6c;
  static const APPBAR = 0xffffffff;
}

class AppDimens {
  final BottomNavigationBarItem item;
  final String title;
  final String iconPath;
  final String activeIconPath;

  AppDimens(
      {@required this.title,
      @required this.iconPath,
      @required this.activeIconPath})
      : item = BottomNavigationBarItem(
            icon: Image.asset(iconPath),
            title: Text(title),
            activeIcon: Image.asset(activeIconPath))
  ;
}
