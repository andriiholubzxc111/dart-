import 'dart:io';
 
 void main(){ 
 /*  Реалізуйте програму, яка переводить введений місяць у відповідну пору року. */

    print("Введіть номер місяця, наприклад : 1 - січень");
    int month = int.parse(stdin.readLineSync()?? '0');
    switch (month) {
      case 1:
        print("Січень");
        break;
      case 2:
        print("Лютий");
        break;
      case 3:
        print("Березень");
        break;
      case 4:
        print("Квітень");
        break;
      case 5:
        print("Травень");
        break;
      case 6:
        print("Червень");
        break;
      case 7:
        print("Липень");
        break;
      case 8:
        print("Серпень");
        break;
      case 9:
        print("Вересень");
        break;
      case 10:
        print("Жовтень");
        break;
      case 11:
        print("Листопад");
        break;
      case 12:
        print("Грудень");
        break;
      default:
        print("Невірний номер місяця");
    }
 }