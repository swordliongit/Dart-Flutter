import 'dart:convert';
import 'dart:io';

void main() {
  var file = File('20M.txt');

  readChunks(file).forEach((chunk) {
    print(utf8.decode(chunk));
  });
}

Iterable readChunks(final File fileObject) sync* {
  RandomAccessFile file = fileObject.openSync();
  List<int> buffer = List<int>.filled(1024, 0);

  try {
    while (file.positionSync() <= file.lengthSync()) {
      var chunk = file.readIntoSync(buffer, 0, 1024);
      yield buffer.sublist(0, chunk);
    }
  } catch (e) {
    print(e);
  } finally {
    file.closeSync();
  }
}
