import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File('20M.txt');

  await for (final chunk in readChunks(file)) {
    print(utf8.decode(chunk));
  }

  // This will be still blocked because of await for, waits for the entire stream to complete
  print('Doing other work...');
}

Stream<List<int>> readChunks(final File fileObject) async* {
  final file = await fileObject.open();
  List<int> buffer = List<int>.filled(1024, 0);

  try {
    while (await file.position() <= await file.length()) {
      var chunk = await file.readInto(buffer, 0, 1024);
      yield buffer.sublist(0, chunk);
    }
  } catch (e) {
    print(e);
  } finally {
    await file.close();
  }
}
