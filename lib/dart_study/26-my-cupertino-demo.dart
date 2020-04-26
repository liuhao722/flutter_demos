import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '111',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(title: Text('home'), icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            title: Text('mine'), icon: Icon(Icons.accessibility)),
      ]),
      // ignore: missing_return
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Home();
          case 1:
            return Mine();
        }
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Home',
      style: TextStyle(fontSize: 30),
    );
  }
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Mine',
      style: TextStyle(fontSize: 30),
    );
  }
}
