
## Icon widget

```dart
OutlinedButton.icon(
	style: OutlinedButton.styleFrom(
	  foregroundColor: Colors.white,
	),
	onPressed: () {
	  print("Button Pressed...");
	},
	icon: const Icon(Icons.arrow_right_alt),
	label: const Text('Start Quiz'),
),
```

## Stacking 2 Icons on Top of Each Other
```dart
Stack(
	alignment: Alignment.center,
	children: [
	  Icon(
		Icons.cloud_outlined,
		size: 100,
		color: const Color.fromARGB(255, 13, 146, 207)
			.withOpacity(.9),
	  ),
	  Padding(
		padding: const EdgeInsets.only(top: 20),
		child: Icon(
		  Icons.file_download_off,
		  size: 60,
		  color: const Color.fromARGB(0, 3, 13, 17)
			  .withOpacity(.8),
		),
	  ),
	],
  ),
```

### Nice example:

```dart
Column(
	mainAxisAlignment: MainAxisAlignment.center,
	children: [
	  Container(
		padding: EdgeInsets.all(16),
		decoration: BoxDecoration(
		  color: Colors.grey.withOpacity(0.1),
		  shape: BoxShape.circle,
		),
		child: Stack(
		  alignment: Alignment.center,
		  children: [
			const Icon(
			  Icons.cloud_outlined,
			  size: 80,
			  color: Color.fromARGB(255, 117, 117, 117),
			),
			Padding(
			  padding: EdgeInsets.only(top: 20),
			  child: Icon(
				Icons.file_download_off,
				size: 40,
				color: const Color.fromARGB(0, 3, 13, 17)
					.withOpacity(.8),
			  ),
			),
		  ],
		),
	  ),
	  const SizedBox(height: 16),
	  const Text(
		'Downloads Are Empty',
		style: TextStyle(
		  fontSize: 18,
		  fontWeight: FontWeight.w500,
		  color: Color.fromARGB(255, 221, 220, 220),
		),
	  ),
	  const SizedBox(height: 8),
	  Text(
		'Downloaded items will appear here',
		style: TextStyle(
		  fontSize: 14,
		  color: Colors.grey[600],
		),
	  ),
	],
  ),
```