
# Late
- Declaring a non-nullable variable that's initialized after its declaration.
- Lazily initializing a variable.
- If you fail to initialize a `late` variable, a runtime error occurs when the variable is used.

Example:
```dart
// This is the program's only call to readThermometer().
late String temperature = readThermometer(); // Lazily initialized.
// if temperature is never used again, readThermometer is never called
```

# Final and Const

* Although a `final` object cannot be modified, its fields can be changed. In comparison, a `const` object and its fields cannot be changed: they're _immutable_.
* Use `const` for variables that you want to be **compile-time constants**. If the const variable is at the class level, mark it `static const`.
* ==Lists== can be mutated even if they are ==final==.

*final vs const example:*
```dart
int getNum() {
  return 5;
}

void main() {
  const int n = getNum(); // Error : Methods can't be invoked in constant expressions.
  final int m = getNum(); // OK
}

```

1.
```dart
var foo = const []
```
- Creates a variable `foo` that initially references an empty constant list
- The `var` means `foo` can later be reassigned to a different list (constant or non-constant)
- The list itself is immutable because of `const`, but the variable can change what it points to

2.
```dart
final bar = const []
```
- Creates a `final` variable `bar` that references an empty constant list
- `final` means `bar` cannot be reassigned to point to a different list
- Combines immutability of both the variable reference and the list contents

3.
```dart
const baz = []
```
The most restrictive version
The const before baz makes both the variable and list constant/immutable
Writing just [] in a const context automatically makes it const []
Functionally identical to writing const baz = const []

```dart
void main() {
  var foo = const [];
  final bar = const [];
  const baz = [];
  
  foo = [1, 2, 3];      // OK - var can be reassigned
  // bar = [1, 2, 3];   // Error - final cannot be reassigned
  // baz = [1, 2, 3];   // Error - const cannot be reassigned
  
  // foo[0] = 1;        // Error - const list cannot be modified
  // bar[0] = 1;        // Error - const list cannot be modified
  // baz[0] = 1;        // Error - const list cannot be modified
}
```