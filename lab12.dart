import 'dart:io';

void main() {
  print("Введіть значення: ");
  String value = stdin.readLineSync()!;

  if (value.length == 1) {
    if (value.codeUnitAt(0) >= 48 && value.codeUnitAt(0) <= 57) {
      print("Це цифра");
    } else if (value.codeUnitAt(0) >= 97 && value.codeUnitAt(0) <= 122) {
      print("Це маленька латинська літера");
    } else if (value.codeUnitAt(0) >= 65 && value.codeUnitAt(0) <= 90) {
      print("Це велика латинська літера");
    } else {
      print("Не відповідає вимогам");
    }
  } else {
    print("Не відповідає вимогам");
  }
}