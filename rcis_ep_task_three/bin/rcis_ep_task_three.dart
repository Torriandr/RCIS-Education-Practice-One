import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 3 pr 1.1
  List<String> f = [];

  stdout.write('Введите элемент a: ');
  String a = stdin.readLineSync()!;

  while (a != ' ') {
    stdout.write('Введите элемент a: ');
    if (a == ' ') {
      break;
    }
    f.add(a);
    a = stdin.readLineSync()!;
  }
  int e = 0;
  int g = 0;
  for (int i = 0; i < f.length; i++) {
    if (f[i].length < f[g].length) {
      g = i;
    }
    else if (f[i].length > f[e].length) {
      e = i;
    }
  }
  print('$f');
  print('Самый короткий элемент списка: ${f[g]}');
  print('Самый длинный элемент списка: ${f[e]}');
}
