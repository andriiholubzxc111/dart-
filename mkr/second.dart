import 'dart:io';
import 'dart:math';
double findSquare(double x){
    return pow(x,3).toDouble();
}

void main() {
print('Введіть a:');
double a = double.parse(stdin.readLineSync()?? '0');
double squareA = findSquare(a); //a^3
double squareA2 = findSquare(squareA); // a^9
double squareA3 = findSquare (squareA2); //a^27 
double sum = squareA + squareA2 + squareA3;
print('Результат: $sum');
}
