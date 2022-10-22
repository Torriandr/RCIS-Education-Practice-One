import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 4 pr 1.1
  List<int> f = [];

  stdout.write('Введите начало диапазона: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Введите конец диапазона: ');
  int b = int.parse(stdin.readLineSync()!);

  List<int> fRandom(f) {

    for (int i = 0; i < 10; i++) {
      int n = Random().nextInt(b - a) + a;
      f.add(n);
    }
    return f;
  }
  f = fRandom(f);
  print(f.join(' '));
}