//  重载
main() {
  var v1 = Vector(2, 3);
  var v2 = Vector(2, 2);
  final r1 = v1 + v2;
  final r2 = v1 - v2;
  print([r1.x, r1.y]);
  print([r2.x, r2.y]);
}

class Vector {
  final int x;
  final int y;

  const Vector(this.x, this.y);

  //  重载 +符号
  Vector operator +(Vector v) {
    return Vector(x + v.x, y + v.y);
  }

  //  重载 -符号
  Vector operator -(Vector v) {
    return Vector(x - v.x, y - v.y);
  }
}
