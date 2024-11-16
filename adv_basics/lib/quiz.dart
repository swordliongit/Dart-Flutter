import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  final List<String> chosenAnswers = [];
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    chosenAnswers.add(answer);

    if (chosenAnswers.length == questions.length) {
      chosenAnswers.clear();
      setState(() {
        // activeScreen = 'results-screen';
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    switch (activeScreen) {
      case 'start-screen':
        screenWidget = StartScreen(switchScreen);
        break;
      case 'questions-screen':
        screenWidget = QuestionsScreen(onChooseAnswer: chooseAnswer);
        break;
      case 'results-screen':
        screenWidget = ResultsScreen(
          chosenAnswers: chosenAnswers,
        );
        break;
      default:
        break;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(248, 131, 27, 190),
                Color.fromARGB(248, 49, 1, 77),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
