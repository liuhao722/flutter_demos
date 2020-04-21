import 'dart:async';

/**
 * dart的 main isolate（main 隔离） 只有一个Event Looper 但是存在两个EventQueue
 * Main  主线程
 * Microtask Queue  微任务队列
 * Event Queue      事件队列
 *
 * Event
 * Event Loop
 *
 * 1-->Microtask queue
 * 2-->Event queue
 * 3-->
 *
 *
 * */

main() {
  //
  testFuture();
//  testScheduleMicrotask();
}

/**
 * 1、只要是new 一个 Future 就会把future放到事件队列里面去
 * 2、如果该future已经执行完了，你还去调用它的then 则将会then里面的东西放到微队列里面去
 * 3、微队列优先于事件队列
 */
void testFuture() {
  Future f = new Future(() => print('f1')); //  事件队列
  Future f1 = new Future(() => null); //  事件队列
  //Future f1 = new Future.delayed(Duration(seconds: 1) ,() => null);
  Future f2 = new Future(() => print('f1-1')); //  事件队列
  Future f3 = new Future(() => null); //  事件队列
  f3.then((_) => print('f2')); //  微队列
  f2.then((_) {
    //  微队列
    print('f3');
    new Future(() => print('f4')); //  事件队列
    f1.then((_) {
      print('f5');
    });
  });
  f1.then((m) {
    //  微队列
    print('f6');
  });
  print('f7'); //  main
}

void testScheduleMicrotask() {
  scheduleMicrotask(() => print('s1')); //微任务
  //delay 延迟
  new Future.delayed(new Duration(seconds: 1), () => print('s2'));

  new Future(() => print('s3')).then((_) {
    print('s4');
    scheduleMicrotask(() => print('s5'));
  }).then((_) => print('s6'));

  new Future(() => print('s7'));

  scheduleMicrotask(() => print('s8'));

  print('s9');

  scheduleMicrotask(() => print('s10'));
}
