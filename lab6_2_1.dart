import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {

  print("Розв'яжшть рівняння y=x^4:");
  stdout.write("Number y:");
  double y = double.parse(stdin.readLineSync()!);
  print(numberToPower(y));

  print("_____________________________________");
  print("Розв'яжшть рівняння y=ax^2+bc+c:");
  stdout.write("Number a:");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Number b:");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Number c:");
  double c = double.parse(stdin.readLineSync()!);
  print(findingRoots(a, b, c));

  print("_____________________________________");
  print("Розв'яжшть рівняння y=ax+c:");
  stdout.write("Number a:");
  double n = double.parse(stdin.readLineSync()!);
  stdout.write("Number c:");
  double m = double.parse(stdin.readLineSync()!);
  stdout.write("Number y:");
  double e = double.parse(stdin.readLineSync()!);
  print(function(n, m, e));

}

numberToPower(double y){
  var fn = sqrt(y);
  var x = sqrt(fn);
  return "Корінь 4 ступеню від ${y} =  ";

}

findingRoots(double a, double b, double c){

  double findDiscriminant() =>  pow(b, 2) - 4 * a * c;
  double d = findDiscriminant();
  double findX1() => (-b + sqrt(d) ) / (2 * a);
  double findX2() => (-b - sqrt(d) ) / (2 * a);

  if(d < 0) return "Рівняння не має рішення, D < 0";
  if(d == 0) return "Рівняння має один корінь: ${findX1()}";
  if(d > 0) return "Рівняння має два корені: ${findX1()} и ${findX2()}";
}


function(double n, double m, double e){
  double func() => (e - m) / n;
  return func();
}
