void main() async {
  print('Starting both tasks...\n');

  // Start both tasks without waiting for either
  var task1 = countUp();
  var task2 = countDown();

  // Wait for both to complete
  await Future.wait([task1, task2]);

  print('\nBoth tasks complete!');
}

Future<void> countUp() async {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    print('Count UP: $i');
  }
}

Future<void> countDown() async {
  for (int i = 5; i >= 1; i--) {
    await Future.delayed(Duration(seconds: 1));
    print('Count DOWN: $i');
  }
}
