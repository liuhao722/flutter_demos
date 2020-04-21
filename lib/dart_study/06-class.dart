main() {
//  var point1 = Point(1, 2);
//  var point2 = Point.alongXAxis(1);
//  var point3 = Point.fromJson(Map());
//  var point4 = Point.fromJson({'x': 1, 'y': 2});
//  print(point1.x + point1.y);
//  print(point2);
//  print(point3);
//  print(point4);

  Point1 p1 = const Point1(1, 2);
  Point1 p2 = const Point1(1, 2);
  print(identical(p1, p2));
}

class Point {
  num x, y;

  Point(this.x, this.y);

  // 命名构造函数
  Point.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  //  重定向构造函数，使用冒号调用其他构造函数
  Point.alongXAxis(num x) : this(x, 0);
}

class Point1 {
  final num x, y;

  const Point1(this.x, this.y);
}
