// async await;
import 'dart:io';

import 'package:dio/dio.dart';

main() {
  //  doGet();
//  getName();
//  getName2();
//  getName3();

  //  链式调用
  new Future(() => futureTask())
      .then((i) => 'abc$i')
      .then((m) => print('$m'))
      .then((_) => new Future.error('出错了'))
      .whenComplete(() => print('whenComplete'))
      .catchError((e) => print(e), test: (Object o) {
    print('test');
    print(o);
    return true; //捕获
    return false; //不进行捕获
  });
}

futureTask() {
  return 10;
}

void doGet() async {
  Response result = await Dio().get('http://www.baidu.com');
  print(result);
}

Future getName() async {
  await getStr();
  await getStr1();
  print('getName');
  getName4();
}

void getStr() {
//  sleep(Duration.microsecondsPerMillisecond);
  print('getStr');
}

void getStr1() {
//  sleep(Duration.microsecondsPerMillisecond);
  print('getStr1');
}

getName2() async {
  print('getName2');
}

getName3() async {
  print('getName3');
}

getName4() async {
  print('getName4');
}
