
## Center widget
```dart
Center(
  child: Column(
	mainAxisSize: MainAxisSize.min,
	....
```

## SizedBox Widget
```dart
SizedBox(
  width: double.infinity,
  child: Column(
	mainAxisAlignment: MainAxisAlignment.center,
	....
```

## Centering Text
```dart
Text(
  currentQuestion.text,
  textAlign: TextAlign.center,
  style: const TextStyle(color: Colors.white),
),
```