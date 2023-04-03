import 'dart:io';

void main() {
  print('Введіть перше число:');
  double number1 = double.parse(stdin.readLineSync()!);

  print('Введіть друге число:');
  double number2 = double.parse(stdin.readLineSync()!);

  print('Введіть операцію (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  double result;
  switch (operator) {
    case '+':
      result = number1 + number2;
      break;
    case '-':
      result = number1 - number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      result = number1 / number2;
      break;
    default:
      print('Недопустима операція');
      return;
  }

  print('Результат: $result');
}