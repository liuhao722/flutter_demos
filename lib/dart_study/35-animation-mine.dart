import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation _animation;

  AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animation',
      home: Scaffold(
        body:Text('data'),

      ),
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {

      })
      ..addStatusListener((state) {

      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}

//class FlutterLogoMine extends FlutterLogo {
//  const FlutterLogoMine() :super()
//}


