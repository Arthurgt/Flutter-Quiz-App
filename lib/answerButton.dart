import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;

  AnswerButton({key, required this.answer, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        minimumSize: Size.fromHeight(1),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: Color.fromARGB(0, 0, 255, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answer, style: TextStyle(color: Colors.white, fontSize: 12)),
    );
  }
}
