import 'dart:io';
bool isWorkday(int workDay){
  return workDay >=1 && workDay <=5;

}
void main(){
  print("Введіть номер дня тижня (1-7):");
  int day = int.parse(stdin.readLineSync()?? '0');
  if (isWorkday(day)) {
    print("Це робочий день.");
  } else {
    print("Це вихідний день.");
  }
}