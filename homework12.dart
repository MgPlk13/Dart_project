import 'dart:io';

void main() {
  String inputString = readString();

  int wordCount = countWords(inputString);
  print('Number of words: $wordCount');

  int numberCount = countNumbers(inputString);
  print('Number of numbers: $numberCount');

  String onlyLetters = removeNonLetters(inputString);
  print('String with only letters: $onlyLetters');

  String singleSpaceString = convertToSingleSpaces(inputString);
  print('String with single spaces: $singleSpaceString');

  List<String> capitalWords = extractCapitalWords(inputString);
  String capitalWordString = capitalWords.join(' ');
  print('Words starting with capital letters: $capitalWordString');
}

String readString() {
  stdout.write('Enter a string: ');
  String inputString = stdin.readLineSync()!;
  return inputString;
}

int countWords(String inputString) {
  return inputString.split(RegExp(r'\s+')).length;
}

int countNumbers(String inputString) {
  List<String> words = inputString.split(RegExp(r'[ ,\.]'));
  int count = 0;
  for (var word in words) {
    if (double.tryParse(word) != null) {
      count++;
    }
  }
  return count;
}

String removeNonLetters(String inputString) {
  return inputString.replaceAll(RegExp(r'[^a-zA-Z]'), '');
}

String convertToSingleSpaces(String inputString) {
  return inputString.replaceAll(RegExp(r'\s+'), ' ');
}

List<String> extractCapitalWords(String inputString) {
  List<String> words = inputString.split(RegExp(r'\s+'));
  List<String> capitalWords = [];
  for (var word in words) {
    if (word.isNotEmpty &&
        word[0] == word[0].toUpperCase() &&
        !word.contains(RegExp(r'\d'))) {
      capitalWords.add(word);
    }
  }
  return capitalWords;
}
