import 'dart:io';

void main() {
  print('Enter the file name (your_file.txt):');
  String fileName = stdin.readLineSync()!;

  String originalFilePath = '$fileName.txt';
  String backupFilePath = '$fileName.bak';

  File originalFile = File(originalFilePath);
  String fileContent = originalFile.readAsStringSync();

  File backupFile = File(backupFilePath);
  backupFile.writeAsStringSync(fileContent);

  print('File backup created successfully!');
}
