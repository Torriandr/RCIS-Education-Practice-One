import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 2 pr 1.1
  List<int> f = [];

  stdout.write('Введите число a: ');
  int a = int.parse(stdin.readLineSync()!);
  int b = 0;
  int c = 1;

  while (a != 0) {
    if (a == 0) {
      break;
    }
    f.add(a);
    stdout.write('Введите число a: ');
    a = int.parse(stdin.readLineSync()!);
  }
  for (int i = 0; i < f.length; i++) {
    b += f[i];
    c *= f[i];
  }
  int s = b ~/ f.length;

  print('Сумма элементов списка: $b');
  print('Произведение элементов списка: $c');
  print('Среднее среди всех элементов списка: $s');
}