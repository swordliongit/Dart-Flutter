
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



## Styling Buttons and Rounding Button Corners
- shape parameter and ==RoundedRectangleBorder==
```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
	backgroundColor: const Color.fromARGB(255, 32, 8, 88),
	foregroundColor: Colors.white,
	shape: RoundedRectangleBorder(
	  borderRadius: BorderRadius.circular(10),
	),
  ),
  onPressed: answerCallback,
  child: Text(answerText),
);
```