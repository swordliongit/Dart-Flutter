
## Control Flow Collections

```dart
void main() {
  // Conditional Addition
  bool cond = true;

  List<int> l = [2, 5, 10, cond ? 11 : 10];

  List<int> j = [10, 23, if (cond) 45];

  print(l);
}
```

## Mapping Lists

: list -> new list
```dart
// Iterable<T> map<T>(T Function(String) toElement)

var list = [24, 10, 10, 30];

var powerlist = list.map((item) {
return item * item;
});

print(powerlist);
```


## Copying a List
```dart
var list = [2, 10, 5];
var copied_list = list.of(list);
```

## Shuffling a List
- Mutates the actual list
```dart
var list = [4, 10, 2];
list.shuffle();
```

## Clearing a List
```dart
var list = [10, 2, 1];
list.clear();
```