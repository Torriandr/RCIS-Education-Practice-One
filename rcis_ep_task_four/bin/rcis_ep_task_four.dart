import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 4 pr 1.1
  try {
    stdout.write('Введите начало диапазона: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Введите конец диапазона: ');
    int b = int.parse(stdin.readLineSync()!);
  
    List<int> f = g(a,b);

    for (int i = 0; i < f.length; i++) {
      stdout.write('${f[i]} ');
    }
  }
  catch(e) {
    print('Не число!');
  }
}
List<int> g(int a, int b) {
  List<int> d = List.generate(10, (i) => Random().nextInt(b - a) + a);
    
  return d;
}
