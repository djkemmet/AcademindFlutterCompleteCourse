import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Class Fields
  String question;

  // CLass Constructor
  Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(Icons.question_mark, size: 56),
        title: const Text("Your Question:"),
        subtitle: Text(question),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(9)),
      ),
    );
  }
}
