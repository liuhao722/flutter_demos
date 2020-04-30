import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  var images = [
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
    'images/icon_111.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          perspective: 0.003,
          diameterRatio: 2.0,
          itemExtent: MediaQuery.of(context).size.height * 0.4,

//         方式一：图片方式
//          children: images
//              .map((m) => Card(
//                    clipBehavior: Clip.antiAlias,
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(20.0)),
//                    child: Stack(
//                      fit: StackFit.expand,
//                      alignment: Alignment.center,
//                      children: <Widget>[
//                        Image.asset(
//                          m,
//                          fit: BoxFit.cover,
//                        ),
//                        Positioned(
//                          bottom: 30.0,
//                          left: 30.0,
//                          child: Text(
//                            '天之道',
//                            style: TextStyle(
//                                color: Color(0xffffffff), fontSize: 30.0),
//                          ),
//                        )
//                      ],
//                    ),
//                  ))
//              .toList(),

//
//          方式二：图片list生成方式
          children: List.generate(images.length, (index) {
            return Image.asset(
              images[index],
              fit: BoxFit.cover,
            );
          }),

          //方式三：文字展示方式
//          children: List.generate(20, (index) {
//            return Text(
//              '位置:$index',
//              style: TextStyle(fontSize: 20.0, color: Colors.red),
//            );
//          }),
//
        ),
      ),
    );
  }
}
