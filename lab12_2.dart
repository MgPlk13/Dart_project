import 'dart:io';

enum Weekd {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  print('Введіть номер дня тижня (1-7): ');
  int dayNumber = int.parse(stdin.readLineSync()!);
  Weekd weekday = getWeekday(dayNumber);
  print('День тижня: ${weekday.toString().split('.').last}');
}

Weekd getWeekday(int dayNumber) {
  switch (dayNumber) {
    case 1:
      return Weekd.Monday;
    case 2:
      return Weekd.Tuesday;
    case 3:
      return Weekd.Wednesday;
    case 4:
      return Weekd.Thursday;
    case 5:
      return Weekd.Friday;
    case 6:
      return Weekd.Saturday;
    case 7:
      return Weekd.Sunday;
    default:
      throw Exception('Недійсний номер дня');
  }
}
