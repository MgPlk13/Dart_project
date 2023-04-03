import 'dart:io';

void main() {
  String filePath = 'file.txt';

  print('Search string: ');
  String searchStr = stdin.readLineSync()!;

  print('Replace to: ');
  String replaceStr = stdin.readLineSync()!;

  File file = File(filePath);
  String fileContent = file.readAsStringSync();

  String newContent = fileContent.replaceAll(searchStr, replaceStr);

  file.writeAsStringSync(newContent);

  print('Substring replaced successfully!');
}