import 'package:flutter/material.dart';

void main() {
//  int data;
//  print(data);
//  data.test();  //  编译时不检查
//  Object o1;
//  o1.test();    //  编译时检查
//  var list1 = [1, 2, 3];
//  var list2 = [1, 2, 3];
//  print(identical(list1, list2));
//  var time = DateTime.now();
//  print(time);

  Set list3 = Set();
  Set list4 = Set();
  list3.addAll([1, 2, 3, 4]);
  list4.addAll([1, 2, 5, 6]);

  print(list3.difference(list4)); //  补集
  print(list3.intersection(list4)); //  交集
  print(list3.union(list4)); //  并集

  Runes runes = Runes('\u{1f6e5} \u6211');
  var str1 = String.fromCharCodes(runes);
  print(str1);
}
