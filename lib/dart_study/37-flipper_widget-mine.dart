import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

bool reversed = false;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  void _doAnim() {
    reversed ? _controller.reverse() : _controller.forward();
    reversed = !reversed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(_animation.value)
//                ..rotateZ(_animation.value)
                ,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: _doAnim,
                child: IndexedStack(
                  children: <Widget>[
                    Text(
                      '0',
                      style: TextStyle(color: Colors.blue, fontSize: 20.0),
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),
                  ],
                  index: _controller.value < 0.5 ? 0 : 1, //0~1
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -pi / 2), weight: 0.5),
      TweenSequenceItem(tween: Tween(begin: pi / 2, end: 0.0), weight: 0.5),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
