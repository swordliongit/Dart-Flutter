Use metadata to give additional information about your code. A metadata annotation begins with the character @, followed by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor.

**Four annotations are available to all Dart code: @Deprecated, @deprecated, @override, and @pragma. For examples of using @override, see Extending a class. Here's an example of using the @Deprecated annotation:**

```dart
class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {...}
  // ···
}
```

```dart
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something');
}
```