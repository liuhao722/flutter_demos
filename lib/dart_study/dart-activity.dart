import 'dart:math';

import 'package:flutter/material.dart';

/**
 *  initState：
 *    当Widget第一次插入到Widget树时会被调用，对于每一个State对象，
 *    Flutter framework只会调用一次该回调，所以，通常在该回调中做一些一次性的操作，
 *    如状态初始化、订阅子树的事件通知等。
 *
 *  didChangeDependencies：
 *    initState后立刻调用，state依赖的对象发生变化时调用。
 *
 *  build：
 *    构建Widget时调用，调用后控件会显示。
 *
 *  Reassemble：
 *    此回调是专门为了开发调试而提供的，在热重载时会被调用，此回调在Release模式下永远不会被调用。
 *
 *  didUpdateWidget：
 *    组件状态改变时候调用，可能会调用多次。
 *
 *  deactive：
 *    当State对象从树中被移除时，会调用此回调。
 *
 *  dispose：
 *  当State对象从树中被永久移除时调用，通常在此回调中释放资源。
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            width: 200.0,
            height: 200.0,
            alignment: Alignment.center,
//            color: Color(0xff00ff00),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffff0000), width: 10.0),
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            child: Text(
              'Container',
              style: TextStyle(fontSize: 28.0),
            ),
            transform: Matrix4.rotationZ(-pi / 9), //沿着Z轴旋转20度
          ),
        ),
      ),
    );
  }
}
