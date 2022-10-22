import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 1 pr 1.1
  List f = List.filled(10, 0);

  for (int i = 0; i < 10; i++) {
    f[i] = (Random().nextInt(90) + 10);
  }
  int a = f[0];
  int b = 0;
  for (int j = 0; j < 10; j++) {
    if (f[j] < a) {
      a = f[j];
      b = j;
    }
  }
  print('Массив со случайными числами: $f');
  print('Минимальное значение: $a');
  print('Номер минимального элемента: $b');
  }