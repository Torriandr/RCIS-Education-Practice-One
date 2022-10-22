import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 4 pr 1.2
  List<List<int>> a = List.generate(12, (i) => List.generate(30, (j) => Random().nextInt(60) - 30));

  List f(List<List<int>> a) {

    List<int> b = List.filled(12,0);

    for (int i = 1; i < 12; i++) {
      for (int j = 1; j < 30; j++) {
        b[i] += a[i][j];
      }
      b[i] = b[i] ~/ 30;
    }
    return b;
    }
    print('Двумерный рандомный массив для каждого дня месяца: $a');
    print('Средняя температура в каждом месяце: ${f(a)}');
    print('Отсортированный массив средних температур: ${f(a)..sort()}');
}