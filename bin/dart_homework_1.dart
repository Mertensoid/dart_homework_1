import 'package:dart_homework_1/dart_homework_1.dart' as dart_homework_1;

void main(List<String> arguments) {
  //Домашнее задание:
  // (Dart) преобразовать строку AAAbbbCCC в строку 3A3b3C (задачка на подумать, учитывая то, что мы не можем преобразовать строку в char[] базовыми инструментами, и то, char вообще нет в Dart )
  // (Dart) найти наименьшее общее кратное для двух переменных int
  // (Dart) Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

  // Task 1
  String someString = "AAAbbbCCC";
  String currentChar = "";
  int counter = 0;
  String resultString = "";
  for (int i = 0; i < someString.length; i++) {
    if (currentChar != someString[i]) {
      if (currentChar != "") {
        resultString += counter.toString() + currentChar;
      }
      currentChar = someString[i];
      counter = 1;
    } else {
      counter++;
    }
  }
  resultString += counter.toString() + currentChar;
  print(resultString);

  //Task 2
  int num1 = 27;
  int num2 = 18;

  // Находим НОД
  int temp1 = num1;
  int temp2 = num2;
  int result = 0;
  while (temp1 != temp2) {
    if (temp1 > temp2) {
      result = temp1 - temp2;
      temp1 = result;
    } else {
      result = temp2 - temp1;
      temp2 = result;
    }
  }

  //Находим НОК
  result = (num1 * num2 / result).toInt();
  print(result);

  //Task 3
  String test = "I have 123 methods to complete 1 task";
  List<String> currentList = test.split(" ");
  print(currentList);
  List<int> resultList = [];
  for (int i = 0; i < currentList.length; i++) {
    try {
      dynamic currentWord = int.parse(currentList[i]);
      assert(currentWord is int);
      resultList.add(currentWord);
    } catch (e) {
    }
  }
  print(resultList);
}
