import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(
      {super.key, required this.answerText, required this.answerCallback});

  final String answerText;
  final void Function() answerCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 32, 8, 88),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: answerCallback,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
