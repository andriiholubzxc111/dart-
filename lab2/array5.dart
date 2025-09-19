import 'dart:io';

void main() {
  /* Задача 6. Дано послідовність цін товарів та назв (у окремих масивах). Вивести на екран ті, які може собі дозволити користувач (кількість грошей задається). */

  List<String> productNames = [
    'Телевізор',
    'Ноутбук',
    'Мобільний телефон',
    'Пральна машина',
    'Кавоварка',
    'Холодильник'
  ];

  List<double> productPrices = [12000, 25000, 8000, 15000, 4000, 20000];

  if (productNames.length != productPrices.length) {
    print('Довжина назв товарів і цін має співпадати!');
    return;
  }

  stdout.write("Скільки у вас грошей? ");
  double userMoney = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  
  List<String> affordableProducts = [];
  for (int i = 0; i < productNames.length; i++) {
    if (productPrices[i] <= userMoney) {
      affordableProducts.add(productNames[i]);
    }
  }

  if (affordableProducts.isEmpty) {
    print("Схоже, що вам не вистачає ні на один із товарів!");
  } else {
    print("Ви можете дозволити собі такі товари:");
    for (var name in affordableProducts) {
      print(name);
    }
  }
}
