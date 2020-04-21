
import 'dart:math';

main() {
  var b = A(1);
  b.doMessage();
  print(sqrt(1));
}

abstract class A {
  factory A(int type) {
    switch (type) {
      case 1:
        return B();
      case 2:
        return B();
      case 3:
        return B();
    }
  }

  doMessage();
}

class B implements A {
  @override
  doMessage() {
    print('B');
  }
}

class C implements A {
  @override
  doMessage() {
    print('C');
  }
}

class D implements A {
  @override
  doMessage() {
    print('D');
  }
}

class E extends AA with B, C {}

class AA {}
