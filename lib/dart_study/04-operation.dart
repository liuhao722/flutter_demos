main() {
  test1();
}

test1() {
  String s;
  String s1 = '1';
  print(s?.length);
  print(s ?? 2);
  print(s ?? 3);

  // 取商
  print(3 / 2);
  print(13 ~/ 2);

  // as is is!
  num n = 1;
  num n1 = 1.0;
  int i = n as int;//转换类型
  print(n is num);

  // 三目 ??

  //级联操作符 ..


}
