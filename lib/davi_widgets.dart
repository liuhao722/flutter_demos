import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyAppLess());
}

class MyAppLess extends StatelessWidget {
  //  静态 死控件 不会发生变化 Image的一个箭头
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '动脑学院',
      theme: new ThemeData.dark(),
      home: new MyAppFul(),
    );
  }
}

class MyAppFul extends StatefulWidget {
  //  动态  最终的目标  活控件  跟数据挂钩 ListView
  @override
  State<StatefulWidget> createState() {
    return _MyAppFulState();
  }
}

class _MyAppFulState extends State<MyAppFul> {
  List<String> list = List.generate(120, (index) => "动脑学院-- $index --元素");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动脑学院'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(list[index]),
            direction: DismissDirection.endToStart,
            child: ListTile(
              title: Text('${list[index]}'),

            ),
            background: Container(
              color: Colors.redAccent,


            ),
            onDismissed: (direction) {
              setState(() {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('${list[index]}')));
                list.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}
