import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
        title: 'Demo-2',
        theme: new ThemeData(primarySwatch: Colors.red),
//        themeMode: ThemeMode.dark,
        home: new MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Demo-1'),
      ),
      body: new Container(
        margin: EdgeInsets.all(32.0),
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            new Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                new Icon(Icons.star, color: Colors.green[100]),
                new Icon(Icons.star, color: Colors.green[500]),
                new Icon(Icons.star, color: Colors.green[900]),
                new Icon(Icons.star, color: Colors.black),
                new Icon(Icons.star, color: Colors.black),
              ],
            ),
            new Text(
              '170 Reviews',
              style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
