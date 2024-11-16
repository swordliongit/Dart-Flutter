void main() {
  Map<int, String> taskList = {
    1: 'Init',
    2: 'Start',
    3: 'Control',
    4: 'Forward',
    5: 'Process'
  };

  for (var val in taskList.values) {
    print(val);
  }
}
