import 'package:flutter/material.dart';
// import 'package:dice_roller/styled_text.dart';
import 'package:dice_roller/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colorList;

  const GradientContainer({super.key, required this.colorList});

  const GradientContainer.purple({super.key})
      : colorList = const [Colors.purple, Colors.purpleAccent];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}




// class GradientContainer extends StatelessWidget {
//   final List<Color> colorList;
//   const GradientContainer({super.key, required this.colorList});

//   const GradientContainer.purple({super.key})
//       : colorList = const [Colors.purple, Colors.purpleAccent];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colorList,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("Hello World"),
//       ),
//     );
//   }
// }
