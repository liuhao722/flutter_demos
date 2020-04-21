import 'package:dio/dio.dart';
import 'dart:math';
import '06-class.dart' show Point; // 仅导入其中一个类
import '06-class.dart' show Point, Point1; // 仅导入其中一个类
import '06-class.dart' hide Point1; //  筛选其中一个类
import '06-class.dart'; //  导入全部类类
import '06-class.dart' deferred as lazyLib; //  延迟导入-本来加载耗时，有需要时候才进行加载
import '06-class.dart' as lib1; //  别名
import '06-class.dart' as lib2; //  别名进行区分
import '06-class.dart' deferred as lazyLib123; //  延迟导入-本来加载耗时，有需要时候才进行加载
import 'core/lib.dart';//分包 汇总

main() {
  dioGet();
  Point1(1, 2);
}

dioGet() async {
  Response response = await Dio().get('http://www.baidu.com');
  print(response);
}

/**
 * 延迟导入
 * 异步加载
 */
lazyLoad() async {
  await lazyLib.loadLibrary();
}

lazyLoadRandom() async {
  await lazyLib123.loadLibrary();
}
