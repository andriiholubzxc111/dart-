import 'dart:io';

void main(){
/*   Задача 5. Дано послідовність оцінок учня. Підрахувати кількість:
1)	двійок
2)	кількість хороших оцінок (добре, відмінно);
3)	кількість оцінок, які нижче середнього.
 */
    print('Введіть кількість оцінок учня :');
    int gradesNum = int.parse(stdin.readLineSync()?? "0");
    List<int> grades = [];
    for(int i=0; i<gradesNum; i++){
        print("Введіть оцінку №${i+1}");
        int grade = int.parse(stdin.readLineSync()?? '2');
        if(grade > 5 && grade < 1 ){
            print("Неправильний ввід");
            break;
        }
        grades.add(grade);
        }
    
    int gradeTwoCount = grades.where((el)=> el == 2).length; 
    int badGradesCount = grades.where((el)=> el <= 3).length;
    int goodGradesCount= grades.where((el)=> el >= 4).length; 
    print("кількість двійок: $gradeTwoCount");
    print("кількість оцінок нижче середнього: $badGradesCount");
    print("кількість хороших оцінок: $goodGradesCount");
    }
