main() {
  try {
//    throw new Exception('1');
    throw '1';
  } on FormatException catch (e) {
    print(e);
  } catch (e, s) {
    // e:Exception对象 s:StackTrace对象
    print('e==>:' + e);
    print('$s 111');
  }
}
