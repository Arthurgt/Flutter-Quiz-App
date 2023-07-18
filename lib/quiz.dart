import 'package:flutter/material.dart';
import 'startScreen.dart';
import 'questionsScreen.dart';

class Quiz extends StatefulWidget {
  Quiz({key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 40, 0),
              Color.fromARGB(255, 0, 70, 0)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
