import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Image实例demo'),
          ),
          body:
//
//        GridView.count(
//          crossAxisCount: 3, //交叉轴
//          scrollDirection: Axis.horizontal, //水平滑动
//          childAspectRatio: 3 / 7, //每个占用的宽高比
//          children: List.generate(100, (index) {
//            return Container(
//              margin: EdgeInsets.all(10.0),
//              color: Colors.red,
//              child: Text(
//                '$index',
//                style: TextStyle(fontSize: 20.0),
//              ),
//            );
//          }),
//        ),

              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    print('$index');
                    return ListTile(
                      leading: Icon(Icons.favorite_border),
                    );
                  })),
    );
  }
}
