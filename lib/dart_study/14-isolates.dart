/**
 * 1、
 * 隔离-isolates--可以理解为一个沙箱
 * 所有Dart代码都在隔离区内运行，而不是线程，每个隔离区都有自己的内存堆，
 * 确保不会有任何其他隔离区访问隔离区的状态
 *
 * 2、注解 @deprecated 废弃
 *
 * 3、自定义注解
 */
main() {
  Do d=  Do();
  d.doSomething();
}

class Do {

  @Todo(name: 's', what: 's')
  void doSomething() {
    print('do');
  }
}

class Todo {
  final String name;
  final String what;

  const Todo({this.name, this.what});
}
