import 'dart:io';

void findMinSum(int N) {
  int minSum = N + 1;
  int minA = 0, minB = 0;

  for (int A = 1; A <= N; A++) {
    int B = (5 * A - N) ~/ 2;
    int sum = A + B;

    if (sum < minSum && B >= 1) {
      minSum = sum;
      minA = A;
      minB = B;
    }
  }

  print("A = $minA, B = $minB");
}
void main() {
  print("Enter N:");
  int? N = int.parse(stdin.readLineSync()!);
  // int N = 20;
  findMinSum(N);
}


