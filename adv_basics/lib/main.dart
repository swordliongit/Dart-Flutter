import 'package:flutter/material.dart';

import 'package:adv_basics/quiz.dart';

void main() {
  runApp(const Quiz());
}



// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 64, 14, 73),
//                 Color.fromARGB(132, 67, 3, 78),
//               ],
//             ),
//           ),
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   'assets/images/quiz-logo.png',
//                   width: 250,
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 const Text(
//                   'Learn Flutter the fun way!',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 OutlinedButton(
//                   onPressed: () => print("Button Pressed"),
//                   style: OutlinedButton.styleFrom(
//                     foregroundColor: Colors.white,
//                     textStyle: const TextStyle(
//                       fontSize: 15,
//                     ),
//                     shape: BeveledRectangleBorder(),
//                   ),
//                   child: const Text('Start Quiz'),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
