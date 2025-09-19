import 'dart:io';

void main() {
/*   Задача 2. Дано інформацію про прибуток К магазинів протягом тижня. Знайти :
1) загальний прибуток кожного масиву за тиждень;
2) загальний прибуток усіх магазинів по дням (загальний прибуток усіх магазинів за понеділок, за вівторок, і т.д.);
3) загальний прибуток за робочі дні
4) загальний прибуток за вихідні дні
5) максимальний прибуток за середу
6) сформувати загальний список (одновимірний масив) зі значенням, які що більші за 200
7) відсортувати кожен тиждень за зростанням
8) відсортувати тижні (рядки) за спаданням максимального елементи у цьому тижні (рядку), тобто при порівнянні рядків потрібно порівнювати максимальні елементи у кожному з цих рядків
8) упорядкувати тижні (рядки) за спаданням суми елементів у рядку (тобто при порівнянні двох рядків треба знайти суму кожного з рядків і порівнювати ці суми, на основі цих сум буде зрозуміло, який з елементів повинен іти раніше). */

  
  List<List<int>> profits = [
    [120, 230, 340, 150, 210, 400, 180], 
    [200, 180, 220, 300, 250, 100, 90],  
    [300, 310, 320, 330, 340, 350, 360], 
  ];

  
  print('Загальний прибуток кожного магазину за тиждень:');
  for (int i = 0; i < profits.length; i++) {
    int sum = profits[i].reduce((a, b) => a + b);
    print('Магазин ${i + 1}: $sum');
  }

  print('Загальний прибуток усіх магазинів по дням:');
  for (int day = 0; day < 7; day++) {
    int sum = 0;
    for (int shop = 0; shop < profits.length; shop++) {
      sum += profits[shop][day];
    }
    print('День ${day + 1}: $sum');
  }

  
  int workdaysSum = 0;
  for (var shop in profits) {
    for (int day = 0; day < 5; day++) {
      workdaysSum += shop[day];
    }
  }
  print('Загальний прибуток за робочі дні: $workdaysSum');

  
  int weekendSum = 0;
  for (var shop in profits) {
    for (int day = 5; day < 7; day++) {
      weekendSum += shop[day];
    }
  }
  print('Загальний прибуток за вихідні дні: $weekendSum');

  
  int maxWednesday = profits.map((shop) => shop[2]).reduce((a, b) => a > b ? a : b);
  print('Максимальний прибуток за середу: $maxWednesday');

  
  List<int> over200 = [];
  for (var shop in profits) {
    over200.addAll(shop.where((profit) => profit > 200));
  }
  print('Значення більші за 200: $over200');

  
  for (var shop in profits) {
    shop.sort();
  }
  print('Кожен тиждень відсортовано за зростанням:');
  print(profits);

  
  profits.sort((a, b) => b.reduce((x, y) => x > y ? x : y)
      .compareTo(a.reduce((x, y) => x > y ? x : y)));
  print('Тижні за спаданням максимального елемента у рядку:');
  print(profits);

  
  profits.sort((a, b) => b.reduce((x, y) => x + y)
      .compareTo(a.reduce((x, y) => x + y)));
  print('Тижні за спаданням суми елементів у рядку:');
  print(profits);
}