import 'dart:io';
import 'dart:math';

void main() {
  print("Введіть х (дійсне число)"); sin(1.5708) = 1 
  double x = double.parse(stdin.readLineSync()?? '0');
  print("Введіть n (ціле число)");
  int n = int.parse(stdin.readLineSync()?? '1');
  double sum = 0;
  for(int i=1; i<=n; i++){
      sum+= pow(sin(x),i);
  }
  print("result: $sum");
}
