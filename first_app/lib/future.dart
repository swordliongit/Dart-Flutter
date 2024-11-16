import 'dart:math';

Future<void> readDb() {
  return Future.delayed(Duration(seconds: 2));
}

void main() {
  readDb();
  print("This will be printed");
}
