import 'dart:convert';
import 'dart:io';

void main() {
  print('Enter the file name (without txt):');
  String fileName = stdin.readLineSync()!;

  String originalFilePath = '$fileName.txt';
  String oddFilePath = '$fileName-odd.txt';
  String evenFilePath = '$fileName-even.txt';

  File originalFile = File(originalFilePath);
  Stream<List<int>> inputStream = originalFile.openRead();

  File oddFile = File(oddFilePath);
  File evenFile = File(evenFilePath);

  IOSink oddSink = oddFile.openWrite();
  IOSink evenSink = evenFile.openWrite();

  int lineNumber = 1;
  inputStream
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .listen((String line) {
    if (lineNumber % 2 == 1) {
      oddSink.writeln(line);
    } else {
      evenSink.writeln(line);
    }
    lineNumber++;
  }, onDone: () {
    oddSink.close();
    evenSink.close();
    print('Odd and even files created successfully!');
  }, onError: (e) {
    print(e.toString());
  });
}