import 'dart:io';
import 'dart:math';

void main() {
 //zadanie 3 pr 1.2
  stdout.write('Введите n: ');
  int n = int.parse(stdin.readLineSync()!);

  List x = List.generate(n, (i) => List.filled(n, 0));

  for(int i = 0; i < n; i++) {
    x[0][i] = 1;
    x[i][0] = 1;
  }
  for(int i = 1; i < n; i++) {
    for (int j = 1; j < n; j++) {
      x[i][j] = x[i - 1][j] + x[i][j - 1];
    }
  }
  for(int i = 0; i < x.length; i++) {
    print(x[i]);
  }
} 