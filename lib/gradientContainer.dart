import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final MaterialColor color1;
  final MaterialColor color2;

  GradientContainer(this.color1, this.color2, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 200),
            ],
          ),
        ));
  }
}
