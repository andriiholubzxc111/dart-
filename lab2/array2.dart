import 'dart:io';

void main(){ 
/*   Задача 2. Дано масив, який зберігає кількість відвідувачів магазину протягом тижня. Вивести на екран: */
const week = 7 ; 
List<int> guestsArr = [];

for (int i=0 ; i<week; i++){
  print("Введіть кількість відвідувачів в ${i+1} день:");
  int guests = int.parse(stdin.readLineSync()?? "0");
  guestsArr.add(guests);
}

for(int i= 0; i<guestsArr.length; i++){
  if (guestsArr[i] < 20){ 
    print('день, коли відвідувачів мало: ${i+1}');
    
  }

}
  int minVisitorsVal = guestsArr.reduce((a, b) => a < b ? a:b);
  print("Найменша кількість відвідувачів: $minVisitorsVal");
  print("Номер дня з найменшою кількістю відвідувачів:");
for(int i=0; i<guestsArr.length; i++) { 
  if(guestsArr[i] == minVisitorsVal ){
    print( "${i+1}");
  }
}
int maxVisitorsVal = guestsArr.reduce((a,b) => a>b? a:b);
print("найбільша кількість відвідувачів: $maxVisitorsVal");
print("дні з найбільшою кількістю відвідувачів:");
for(int i=0; i<guestsArr.length; i++){
  if(guestsArr[i] == maxVisitorsVal){
    print(i+1);
  }
}
int workDaySum = 0; 
for(int i=0; i<5;i++){
  workDaySum += guestsArr[i];
}
int weekendDaySum = 0; 
for(int i = 5; i< 7; i++){
  weekendDaySum += guestsArr[i];
}
print("Загальна кількість відвідувачів у робочі дні :$workDaySum");
print("Загальна кількість відвідувачів у вихідні дні :$weekendDaySum");
}