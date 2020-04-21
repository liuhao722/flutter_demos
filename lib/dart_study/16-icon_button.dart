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
        body: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.person,
              ),
              SizedBox(
                height: 10.0,
              ),
              IconButton(
                icon: Icon(Icons.error),
                onPressed: () {},
              ),
              Container(
                height: 10.0,
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text("RaiseButton"),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('raiseButton'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
