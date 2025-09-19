import 'dart:io';
void main(){
 /*  Задача 3. Дано масив імен учнів. З’ясувати скільки разів зустрічається ім’я «Іван». */
    print('Введіть кількість людей у списку:');
    int peopleNum = int.parse(stdin.readLineSync()?? '0');
    List<String> people = [];
    for(int i=0; i<peopleNum; i++){
        print('ім/`я ${i+1} людини:');
        String peoples = stdin.readLineSync()?? '';
        people.add(peoples);
    }
    int ivanCount = 0;
    for(int i=0; i< peopleNum; i++){
        if(people[i] == 'Ivan'){
            ivanCount++;
        }
    }
    print("кількість Iванів у списку: $ivanCount");
    }
