import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 2 pr 1.2
  List<int> f = [];

  int a = 1;
  f.add(a);
  for (int i = 0; i < 20; i++) {
    int b = a + 2;
    a = b;
    f.add(b);
  }
  print('Массив: $f');
}