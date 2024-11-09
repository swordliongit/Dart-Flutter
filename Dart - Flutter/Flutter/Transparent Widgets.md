## 1. Wrap with Opacity Widget

Cons : Performance Intensive

```dart
Opacity(
	opacity: 0.5,
	child: Image.asset(
	  'assets/images/quiz-logo.png',
	  width: 300,
	),
),
```


## 2. Transparency Slider of Color parameter

```dart
Image.asset(
	'assets/images/quiz-logo.png',
	width: 300,
	color: const Color.fromARGB(150, 255, 255, 255),
  ),
```