

void main() {
  _testFinal();
}

void _testFinal() {
  final l1 = [1, 2, 3, 4];
  const l2 = [1, 2, 3, 4];

  l1[1] = 12;
//  l2[1] = 13;
  print(l1);
  print(l2);
}
