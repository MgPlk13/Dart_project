import 'dart:io';
import 'dart:math';

void main () {
  print("Enter n:");
  int? n = int.parse(stdin.readLineSync()!);

  int m = 0;
  for (int i = 0 ;  i <= n ; i++) {
    print("${m++} -> ${fibonacci(i)}");
  }

  print('Enter N:');
  int N = int.parse(stdin.readLineSync()!);

  int result = factorial(N);
  print('Factorial of $N');
  print(result);

  print("Enter x:");
  double? x = double.parse(stdin.readLineSync()!);
  print(func(x));

}

int fibonacci (int n) {
  if (n == 0 || n == 1 ) {
    return n;
  }

  return fibonacci (n- 1 ) + fibonacci (n- 2 );
}


int factorial(int n) {
  return n == 1 ? 1 : n * factorial(n - 1);

}

func(double x){
  var a = x ~/ 10;
  var res = a % 10;
  return res;
}

