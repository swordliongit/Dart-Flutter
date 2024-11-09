
1. Main app widget: **MaterialApp**
2. To have a nice looking template background: **Scaffold**
3. Centering : **Center**: It will take as much space as it wants.
4. To contain: **Container** -> BoxDecoration
5. Showing text: **Text**
6. Padding: **Sized Box**
7. Icons : Icon

## Creating Custom Widgets

1. Create a class and extend StatelessWidget/StatefulWidget
2. Provide the build() method, returning a widget inside it.


## Stateless vs Stateful Widgets
- Use Stateless if your widget works on input-output basis.
- Use Stateful if your widget changes internal variables and changes what's seen on the UI.



# Updating UI on action, Stateful Widget
- CreateState is used to return the state widget and SetState is used to make changes

```dart
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  var currentDiceRoll = 2;

  final randomizer = Random();

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    print('Changing image...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // to make the column take the least amount of space
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          ....

```