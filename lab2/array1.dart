
import 'dart:io';
void main(){
  /* Задача 1. Дано масив, який містить оцінки з К предметів. Знайти середній бал і з’ясувати до якої категорії він відноситься (відмінник, двійочник (має хоча би одну двійку), хорошист (оцінки добре і відмінно), трійочник(є хоча би одна трійка)). */

print("Введіть кількість предметів :");
int subjects = int.parse(stdin.readLineSync()?? '12');
List<int> grades = [];
for(int i=1; i<=subjects; i++)
{
  print("оцінка по $i предмету:");
  int grade = int.parse(stdin.readLineSync()?? '0');
  grades.add(grade);
}
bool isPerfectStudent = grades.every((el) => el == 5);
bool isGoodStudent = grades.every((el) => el==4 || el == 5);
bool isBadStudent = grades.any((el) => el == 3 && el != 2);
bool isVeryBadStudent = grades.contains(2);
if(isPerfectStudent){ 
  print("відмінник!!!");
}

else if(isVeryBadStudent){
  print("двійочник!");
}
else if(isGoodStudent){
  print('Хорошист!');
}
else if (isBadStudent){
  print('Трійочник!!');
}

else{
  print("помилки із вводом ");
}


}