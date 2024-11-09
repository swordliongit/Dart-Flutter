
# The need for initState():

```dart
class _QuizState extends State<Quiz> {
	Widget activeScreen = StartScreen(switchScreen); // doesn't work. switchScreen may or may not exist at this point of time
	
	void switchScreen() {
	setState(() {
	  activeScreen = QuestionsScreen();
	});
}
```

```dart
class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
  .....
```

 ![[Screenshot 2024-11-07 104621.png]]