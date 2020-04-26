import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
//        child: buildPositionedStack(),
//        child: buildAlignmentStack(),
        child: buildIndexedStack(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _index = Random().nextInt(3) % 3;
        });
      }),
    );
  }

  Stack buildIndexedStack() {
    return IndexedStack(
      index: _index,
      alignment: Alignment(1.2, -1.2),
      children: <Widget>[
        Container(
          color: Color(0xff0000ff),
          width: 200.0,
          height: 200.0,
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Color(0xffff0000),
        ),

        CircleAvatar(
          radius: 40.0,
          backgroundColor: Color(0xffff0000),
        ),
      ],
    );
  }

  Stack buildAlignmentStack() {
    return Stack(
      alignment: Alignment(1.2, -1.2),
      children: <Widget>[
        Container(
          color: Color(0xff0000ff),
          width: 200.0,
          height: 200.0,
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Color(0xffff0000),
        ),
      ],
    );
  }

  Stack buildPositionedStack() {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xffff0000),
          width: 200.0,
          height: 200.0,
        ),
        Positioned(
//              top: 10.0,
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Color(0xff0000ff),
          ),
        ),
      ],
    );
  }
}
