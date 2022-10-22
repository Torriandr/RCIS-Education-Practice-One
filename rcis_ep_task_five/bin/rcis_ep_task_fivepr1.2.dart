import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 5 pr 1.2
  List<List<int>> a = List.generate(12, (_) => List.generate(30, (_) => Random().nextInt(24) - 6));

  int b = 0;
  
  var map = {
    "January" : a[b],
    "February" : a[b + 1],
    "March" : a[b + 2],
    "April" : a[b + 3],
    "May" : a[b + 4],
    "June" : a[b + 5],
    "July" : a[b + 6],
    "August" : a[b + 7],
    "September" : a[b + 8],
    "October" : a[b + 9],
    "November" : a[b + 10],
    "December" : a[b + 11]
  };
  g(map, a);
  }
  Map g(map, s) {
    var c = {
      "January": 0,
      "February": 0,
      "March": 0,
      "April": 0,
      "May": 0,
      "June": 0,
      "July": 0,
      "August": 0,
      "September": 0,
      "October": 0,
      "November": 0,
      "December": 0
    };
    int g = 0;
    for (var key in map.keys) {
      double d = 0;
    for(int i = 0; i  < 30; i++) {
      d += map[key]![i];
    }
    c[key] = (d ~/ 30);
   }
   for (var m in c.entries) {
    print("Месяц: ${m.key} - Средняя температура: ${m.value}");
   }
   return c;
  }