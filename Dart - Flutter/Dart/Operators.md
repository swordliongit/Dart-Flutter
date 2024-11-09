
| `as`  | Typecast (also used to specify [library prefixes](https://dart.dev/language/libraries#specifying-a-library-prefix)) |
| ----- | ------------------------------------------------------------------------------------------------------------------- |
| `is`  | True if the object has the specified type                                                                           |
| `is!` | True if the object doesn't have the specified type                                                                  |
| `>>>` | Unsigned shift right, triple shift                                                                                  |

## Assignment operators

* As you've already seen, you can assign values using the `=` operator. To assign only if the assigned-to variable is null, use the `??=` operator.

```dart
// Assign value to a
a = value;
// Assign value to b if b is null; otherwise, b stays the same
b ??= value;
```

---

## Conditional expressions
[#](https://dart.dev/language/operators#conditional-expressions)
Dart has two operators that let you concisely evaluate expressions that might otherwise require [if-else](https://dart.dev/language/branches#if) statements:

```dart
condition ? expr1 : expr2
```

If _condition_ is true, evaluates _expr1_ (and returns its value); otherwise, evaluates and returns the value of _expr2_.

```dart
expr1 ?? expr2 // if-null operator
```

If _expr1_ is non-null, returns its value; otherwise, evaluates and returns the value of _expr2_.

```dart
String playerName(String? name) => name ?? 'Guest';
```

---


## Cascade Notation (.. and ..?)
```dart
var paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;
```

**If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.**

```dart
querySelector('#confirm') // Get an object.
  ?..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView();
```

---

## Spread Operator (...)



---

## Other operators

[#](https://dart.dev/language/operators#other-operators)

You've seen most of the remaining operators in other examples:

|Operator|Name|Meaning|
|---|---|---|
|`()`|Function application|Represents a function call|
|`[]`|Subscript access|Represents a call to the overridable `[]` operator; example: `fooList[1]` passes the int `1` to `fooList` to access the element at index `1`|
|`?[]`|Conditional subscript access|Like `[]`, but the leftmost operand can be null; example: `fooList?[1]` passes the int `1` to `fooList` to access the element at index `1` unless `fooList` is null (in which case the expression evaluates to null)|
|`.`|Member access|Refers to a property of an expression; example: `foo.bar` selects property `bar` from expression `foo`|
|`?.`|Conditional member access|Like `.`, but the leftmost operand can be null; example: `foo?.bar` selects property `bar` from expression `foo` unless `foo` is null (in which case the value of `foo?.bar` is null)|
|`!`|Non-null assertion operator|Casts an expression to its underlying non-nullable type, throwing a runtime exception if the cast fails; example: `foo!.bar` asserts `foo` is non-null and selects the property `bar`, unless `foo` is null in which case a runtime exception is thrown|
