import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Complete your quiz!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: const Text(
              'Start',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
