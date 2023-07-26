import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIndex(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 241, 198)
            : const Color.fromARGB(255, 255, 90, 90),
      ),
      child: Text(
        (questionIndex + 1).toString(),
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
