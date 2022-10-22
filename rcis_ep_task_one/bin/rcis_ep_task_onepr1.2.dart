import 'dart:io';
import 'dart:math';

void main() {
 //zadanie 1 pr 1.2
  List<int> f = [];

  int a = 100;
  for (int i = 0; i < 100; i++) {
    int b = a - 3;
    a = b;
    f.add(b);
  }
  print('Массив: $f');
} 