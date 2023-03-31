import 'dart:io';
import 'dart:math';


void main()
{
  var list1 = [];

  print("Enter a:");
  int? a = int.parse(stdin.readLineSync()!);
  print("Enter b:");
  int? b = int.parse(stdin.readLineSync()!);
  print("Enter c:");
  int? c = int.parse(stdin.readLineSync()!);
  print("Enter d:");
  int? d = int.parse(stdin.readLineSync()!);

  list1.add(a);
  list1.add(b);
  list1.add(c);
  list1.add(d);

  var maxNumber =
  list1.reduce((value, element) => value > element ? value : element);
  print("Max element in list is: $maxNumber");

  print("________________________________________________");
  print("Enter x:");
  int? x = int.parse(stdin.readLineSync()!);
  print("$x to the 4th power:");
  print(pow(x, 4));

  print("________________________________________________");
  print("$a*$x^2 + $b*$x + $c = ");
  print(a * (pow(x, 2)) + b * x + c);


}