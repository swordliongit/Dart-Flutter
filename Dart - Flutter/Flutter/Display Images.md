
1. Create /assets/images/ folder in root
2. In pubspec.yaml, add the images under ==assets==:

```yaml
....
# The following section is specific to Flutter packages.
flutter:
  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - assets/images/dice-1.png
    - assets/images/dice-2.png
    - assets/images/dice-3.png
    - assets/images/dice-4.png
    - assets/images/dice-5.png
    - assets/images/dice-6.png
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg
....
```

3. Image widget.
```dart
...
	child: Center(
		child: Image.asset(
		  "assets/images/dice-1.png",
		  width: 200,
		),
	),
...
```