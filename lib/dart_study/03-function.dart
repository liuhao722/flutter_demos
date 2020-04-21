main() {
  print(add());
  add1(1, 2);
  add1(1);
  add2(a: 1);
//  add2(1, 2, 3);

  add3(3);
  add3(3, a: 2);

  test(List list, String func(str)) {
    for (var i = 0; i < list.length; i++) {
      list[i] = func(list[i]);
    }
    return list;
  }

  var ls = ['aaa', 'bbb', 'ccc'];
  print(test(ls, (str) => str * 2));

  // 闭包
  Function makeAddFunc(int a) {
    return (int y) => a + y;
  }

  var addFunc = makeAddFunc(12);
  print(addFunc(22));

  //
  calculator(11, 22, added);
  calculator(100, 20, divide);
}

typedef Func(int a, int b);

added(int a, int b) {
  print('${a + b}');
}

divide(int a, int b) {
  print('${a / b}');
}

calculator(int a, int b, Func func) {
  func(a, b);
}

add() {
  return 3;
}

add1(int a, [int b, int c]) {} //  可选位置

add2({int a, int b, int c}) {} //  可选指定参数

add3(int c, {int a = 1, int b = 2}) {} //  可选指定参数有默认值
