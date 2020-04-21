void main() {
  var info = Person();
  info.showInfo();
  info.say();
}

class Person extends Animal with PersonInfo {
  @override
  void say() {
    super.say();
    print('嗷嗷嗷-Person');
  }
}

abstract class Animal {
  void say() {
    print('嗷嗷嗷-Animal');
  }
}

class PersonInfo {
  void showInfo() {
    print('this is show Person info');
  }
}
