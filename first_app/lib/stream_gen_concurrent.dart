import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File('20M.txt');

  // Method 1: Use Stream.listen() instead of await for
  readChunks(file).listen((chunk) {
    print(utf8.decode(chunk));
  });

  // Do other work while file is being processed
  for (var i = 0; i < 20; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    print('Still doing other work... $i');
  }

  // // Or Method 2: Process chunks and other work concurrently
  // await Future.wait([
  //   processChunks(file),
  //   doOtherWork(),
  // ]);
}

Future<void> processChunks(File file) async {
  await for (final chunk in readChunks(file)) {
    print(utf8.decode(chunk));
  }
}

Future<void> doOtherWork() async {
  while (true) {
    await Future.delayed(Duration(milliseconds: 100));
    print('Still doing other work...');
  }
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
