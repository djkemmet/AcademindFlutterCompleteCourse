import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Class Fields
  String answerValue;
  final VoidCallback checkAnswer;

  // Class Constructor
  Answer({super.key, required this.answerValue, required this.checkAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: checkAnswer,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
        ),
        child: Text(answerValue),
      ),
    );
  }
}
