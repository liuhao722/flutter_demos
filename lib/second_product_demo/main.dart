import 'package:flutter/material.dart';
import 'package:first_flutter_demo/second_product_demo/constants/constants.dart' show AppColors;
import 'package:first_flutter_demo/second_product_demo/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉右上角debug标签
      title: '开源中国',
      theme: ThemeData(
        primaryColor: Color(AppColors.APP_THEME),
      ),
      home: HomePage(),
    );
  }
}
