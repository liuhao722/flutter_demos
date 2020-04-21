import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                '做一家...........做一家...........做一家...........做一家...........'
                '做一家...........做一家...........做一家...........做一家...........'
                '做一家...........做一家...........做一家...........做一家...........',
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
                maxLines: 2,
                overflow: TextOverflow.clip, //截断
                softWrap: true, //自动换行
              ),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                    text: '做一家受人尊敬的企业\n',
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                    children: <TextSpan>[
                      TextSpan(text: '做一位受人尊敬的老师，是我们'),
                      TextSpan(
                          text: '动脑学院',
                          style: TextStyle(color: Colors.blue),
                          //..级联调用操作
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String url = 'https://www.baidu.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'error $url';
                              }
                            }),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
