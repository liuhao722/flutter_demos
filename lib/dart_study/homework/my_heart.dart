import 'dart:ui';

import 'package:flutter/material.dart';

class Heart extends CustomPainter{


  Paint _paint = new Paint()
    ..color = Colors.redAccent
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 1.0
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {

    var width = 20;
    var height = 30;
    Path path = new Path();

    path.moveTo(width / 2, height / 4);
    path.cubicTo((width * 6) / 7, height / 9, (width * 13) / 13,
        (height * 2) / 5, width / 2, (height * 7) / 12);
    canvas.drawPath(path, _paint);

    Path path2 = new Path();
    path2.moveTo(width / 2, height / 4);
    path2.cubicTo(width / 7, height / 9, width / 21, (height * 2) / 5,
        width / 2, (height * 7) / 12);
    canvas.drawPath(path2, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}