
```dart
Column(
	mainAxisAlignment: MainAxisAlignment.center,
	crossAxisAlignment: CrossAxisAlignment.stretch,
	children: [
	  Text(
		currentQuestion.text,
		style: TextStyle(color: Colors.white),
	  ),
	  const SizedBox(height: 50),
	  ...currentQuestion.answers.map((answer) {
		return AnswerButton(answerText: answer, answerCallback: () {});
	  }),
	],
  ),
```

## Wrap with Container to access margin parameter
```dart
Container(
	margin: const EdgeInsets.all(40),
	child: Column(
	....
```