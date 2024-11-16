
```dart
import 'dart:io';

void main() {
  String? age = stdin.readLineSync();
  print('You entered $age');
  
  int? input = int.parse(stdin.readLineSync()!);
}
```