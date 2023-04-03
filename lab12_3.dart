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

Weekd getNextWeekday(Weekd currentWeekday) {
  switch (currentWeekday) {
    case Weekd.Monday:
      return Weekd.Tuesday;
    case Weekd.Tuesday:
      return Weekd.Wednesday;
    case Weekd.Wednesday:
      return Weekd.Thursday;
    case Weekd.Thursday:
      return Weekd.Friday;
    case Weekd.Friday:
      return Weekd.Saturday;
    case Weekd.Saturday:
      return Weekd.Sunday;
    case Weekd.Sunday:
      return Weekd.Monday;
  }
}


void main() {
  print('Введіть номер початкового дня тижня (від 1 до 7):');
  int weekdayNumber = int.parse(stdin.readLineSync()!);

  Weekd currentWeekday = Weekd.values[weekdayNumber - 1];
  print('Початковий день: ${currentWeekday.toString().split('.').last}');

  Weekd nextWeekday = getNextWeekday(currentWeekday);
  print('Наступний день: ${nextWeekday.toString().split('.').last}');
}
