import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SimpleDialog(
                title: Text('对话框标题'),
                children: <Widget>[
                  SimpleDialogOption(
                    child: Text('选项1'),
                    onPressed: () {
                      print('选项1');
                    },
                  ),
                  SimpleDialogOption(
                    child: Text('选项2'),
                    onPressed: () {
                      print('选项2');
                    },
                  ),
                  SimpleDialogOption(
                    child: Text('选项3'),
                    onPressed: () {
                      print('选项3');
                    },
                  ),
//                  Image.asset(
//                    'images/icon_111.jpg',
//                    width: double.infinity,
//                    height: 150,
//                    fit: BoxFit.cover,
//                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
