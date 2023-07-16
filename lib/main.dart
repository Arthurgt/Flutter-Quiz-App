import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './gradientContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // var _questionIndex = 0;
  // var _totalScore = 0;

  // static const questions = [
  //   {
  //     'questionText': 'What\'s your favorite color?',
  //     'answers': [
  //       {'text': 'Black', 'score': 10},
  //       {'text': 'Red', 'score': 8},
  //       {'text': 'White', 'score': 0},
  //       {'text': 'Green', 'score': 4}
  //     ]
  //   },
  //   {
  //     'questionText': 'What\'s your favorite animal?',
  //     'answers': [
  //       {'text': 'Dog', 'score': 0},
  //       {'text': 'Panda', 'score': 2},
  //       {'text': 'Cat', 'score': 6},
  //       {'text': 'Lion', 'score': 10}
  //     ]
  //   },
  //   {
  //     'questionText': 'What\'s your favorite footballer?',
  //     'answers': [
  //       {'text': 'Ronaldo', 'score': 2},
  //       {'text': 'Lewandowski', 'score': 0},
  //       {'text': 'Messi', 'score': 6},
  //       {'text': 'Benzema', 'score': 10}
  //     ]
  //   }
  // ];

  // void answerQuestion(int score) {
  //   _totalScore = _totalScore + score;
  //   setState(() => {_questionIndex = _questionIndex + 1});
  // }

  // void _resetQuiz() {
  //   setState(() {
  //     _totalScore = 0;
  //     _questionIndex = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.green, Colors.teal),
        // body: _questionIndex < questions.length
        //     ? Quiz(_questionIndex, questions, answerQuestion)
        //     : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
