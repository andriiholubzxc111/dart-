import 'dart:io';
import 'dart:math';

void main() {
 /*  Задача 1. Дано масив 30 випадкових цілих чисел. Підрахувати скільки було обмінів під час сортування бульбашкою */

  final random = Random();
  List<int> array = List.generate(30, (_) => random.nextInt(100)); 
  print('Початковий масив: $array');

  int swapCount = bubbleSortWithSwapCount(array);
  print('Посортований список:   $array');
  print('Кількість обмінів: $swapCount');
}

int bubbleSortWithSwapCount(List<int> arr) {
  int n = arr.length;
  int swapCount = 0;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapCount++;
      }
    }
  }
  return swapCount;
}