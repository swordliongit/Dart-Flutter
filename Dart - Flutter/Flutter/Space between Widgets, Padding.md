

## Use padding parameter
```dart
TextButton(
  onPressed: rollDice,
  style: TextButton.styleFrom(
	padding: const EdgeInsets.only(
	  top: 20,
	),
	....
```


## Use SizedBox widget in between
- Has fixed size, doesn't scale if it's got a child widget.
```dart
Column(
  mainAxisSize: MainAxisSize.min,
  children: [
	Image.asset(
	  "assets/images/dice-1.png",
	  width: 200,
	),
	const SizedBox(
	  height: 20,
	),
	TextButton(
	  onPressed: rollDice,
	  style: TextButton.styleFrom(
	  ....
```