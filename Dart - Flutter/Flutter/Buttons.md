
1. TextButton
2. OutlinedButton


## TextButton: Simple button
```dart
TextButton(
  onPressed: rollDice,
  style: TextButton.styleFrom(
	padding: const EdgeInsets.only(
	  top: 20,
	),
	foregroundColor: Colors.white,
	textStyle: const TextStyle(
	  fontSize: 28,
	),
  ),
  child: const Text(
	"Roll Dice",
  ),
)
``` 
