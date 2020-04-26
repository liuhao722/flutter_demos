import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            crossAxisEndOffset: -2.0,//偏移量

            onDismissed: (_) {
              items.removeAt(index);
            },
            movementDuration: Duration(milliseconds: 100),
//            direction: DismissDirection.startToEnd,
            key: Key(item),
            child: ListTile(
              title: Text('$item'),
            ),
            background: Container(
              color: Color(0xffff0000),
            ),
          );
        },
      ),
    );
  }
}
