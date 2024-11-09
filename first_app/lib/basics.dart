import 'dart:collection';

void printer(String name, {String greeting = "Hello"}) =>
    print('$greeting, $name');

enum Enemy { human, zombie, plant }

class Human {
  late String gender;
  late String name;
  late DateTime bday;

  // Human(this.gender, this.name, this.bday);
}

// Meta data
class Importance {
  final String programmer;
  final String level;

  const Importance(this.programmer, this.level);
}

@Importance("Sword", "Level 3")
void half_function() {
  print("Some stuff");
}

void main() {
  // print("Hello World");

  var name = "Sword";
  var _l = [name, "Habibe", "Deniz"];

  // lists
  var pack = {
    "names": _l,
    "ages": [23, 26]
  };

  // loops
  for (var element in _l) {
    print(element);
  }

  // anonymous function
  var func = (name) => print(name);
  func("test");

  // function named argument
  printer("sword");

  var zomb = Enemy.zombie;

  print(zomb);

  // Nullability
  String? tag; // defaults to null
  assert(tag != null);

  // Null safe assignment
  int nval = 1;
  int? tval = 2;

  tval ??= nval;

  print(tval);

  // if-null operator
  bool check = null ?? true;

  print(check);

  // cascading notation
  var sword = Human()
    ..name = "sword"
    ..bday = DateTime(1998)
    ..gender = "Male";

  print(sword);

  // spread operator
  var someList = [1, 4, 20];

  var secondList = [32, 34, 45, ...someList];

  print(secondList);

  // records
  (int x, int y) rec = (12, 24);

  ({int a, int b}) named_record = (a: 10, b: 20);
}

T gfunc<T>(T ob) {
  T d;
  d = ob;
  return d;
}
