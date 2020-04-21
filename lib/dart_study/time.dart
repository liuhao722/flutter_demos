void main() {
  test();
}

void test() {
  var now = DateTime.now();
//  var november = DateTime.november;
//  print('time---> $now november---> $november');

  var time1 = DateTime(2018, 3, 3);
  print('time1---> $time1');

  var time2 = DateTime.parse('2009-01-01 20:33:11');
  print('time2---> $time2');
}
