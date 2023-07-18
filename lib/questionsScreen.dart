import 'package:flutter/material.dart';
import 'answerButton.dart';
import 'package:flutter_complete_guide/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion.text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 30),
        AnswerButton(answer: currentQuestion.answers[0], onTap: () {}),
        AnswerButton(answer: currentQuestion.answers[1], onTap: () {}),
        AnswerButton(answer: currentQuestion.answers[2], onTap: () {}),
        AnswerButton(answer: currentQuestion.answers[3], onTap: () {}),
      ],
    );
  }
}
