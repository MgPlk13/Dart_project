import 'dart:io';

void main() {
  print('Enter the file name (without .txt):');
  String fileName = stdin.readLineSync()!;

  String originalFilePath = '$fileName.txt';
  String encryptedFilePath = '$fileName-encrypted.txt';

  File originalFile = File(originalFilePath);
  String fileContent = originalFile.readAsStringSync();

  int shift = 3;

  String encryptedText = '';
  for (int i = 0; i < fileContent.length; i++) {
    String character = fileContent[i];
    if (character == ' ' || character == '\n') {
      encryptedText += character;
    } else {
      int asciiValue = character.codeUnitAt(0) + shift;
      if (asciiValue > 126) {
        asciiValue = asciiValue - 95;
      }
      encryptedText += String.fromCharCode(asciiValue);
    }
  }

  File encryptedFile = File(encryptedFilePath);
  encryptedFile.writeAsStringSync(encryptedText);

  print('File encrypted successfully!');

  String encryptedContent = encryptedFile.readAsStringSync();
  String decryptedFilePath = '$fileName-decrypted.txt';

  String decryptedText = '';
  for (int i = 0; i < encryptedContent.length; i++) {
    String character = encryptedContent[i];
    if (character == ' ' || character == '\n') {
      decryptedText += character;
    } else {
      int asciiValue = character.codeUnitAt(0) - shift;
      if (asciiValue < 32) {
        asciiValue = asciiValue + 95;
      }
      decryptedText += String.fromCharCode(asciiValue);
    }
  }

  File decryptedFile = File(decryptedFilePath);
  decryptedFile.writeAsStringSync(decryptedText);

  print('File decrypted successfully!');
}