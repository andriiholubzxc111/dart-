import 'dart:io';

void main(){ 
  /* З клавіатури вводиться розмір заробітної плати та розмір прожиткового мінімуму. Визначити розмір соціальної допомоги (ввжаємо, що заробітна плата є меншою). */

  print("Введіть власну заробітну плату :");
  int salary = int.parse(stdin.readLineSync()?? '0');
  print("Введіть прожитковий мінімум :");
  int livingMinimumSalary = int.parse(stdin.readLineSync()?? '0');
  if (salary<livingMinimumSalary){
      
      int socialPayment= livingMinimumSalary - salary;
      print("Розмір соціальної допомоги у вашому випадку становить $socialPayment");
      
  }
  else { 
      print("Вам не полягає соціальна допомога");
  }
  
}