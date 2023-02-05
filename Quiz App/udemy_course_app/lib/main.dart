import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Class Fields
  final List<Map> questions = [
    {
      'Question': 'What\'s your favorite color?',
      'Answers': ['Red', 'Green', 'Blue']
    },
    {
      'Question': 'What\'s your favorite vacation destination',
      'Answers': ['Disney', 'Colorado', 'Arizona']
    },
  ];
  int questionNumber = 0;

  // Class Functions
  void _answerQuestion() {
    if (questionNumber < questions.length) {
      print("We have more questions.");
    }
    setState(() {
      questionNumber++;
    });
  }

  Widget setBody() {
    if (questionNumber < questions.length) {
      return Column(
        children: <Widget>[
          Question(question: questions[questionNumber]['Question']),
          const SizedBox(
            height: 8,
          ),
          ...(questions[questionNumber]['Answers'] as List<String>).map(
            (e) {
              return Answer(
                answerValue: e,
                checkAnswer: _answerQuestion,
              );
            },
          ),
          const Spacer(),
        ],
      );
    } else {
      return Center(
          child: Column(
        // ENSURE DEAD CENTER
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("That's all the questions!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 24),
          ElevatedButton(
            child: const Text("Start Over"),
            onPressed: () {
              setState(() {
                questionNumber = 0;
              });
            },
          ),
        ],
      ));
    }
  }

  // Initial State.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
      ),
      body: setBody(),
    ));
  }
}

// MyApp({super.key});



//   void _answerQuestion() {
//     print('Answer Chosen!');
//   }

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text("My First App"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Text(questions[questionNumber]),
//           ElevatedButton(
//             onPressed: _answerQuestion,
//             child: const Text("Answer 1"),
//           ),
//           ElevatedButton(
//             onPressed: _answerQuestion,
//             child: const Text("Answer 2"),
//           ),
//           ElevatedButton(
//             onPressed: _answerQuestion,
//             child: const Text("Answer 3"),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 questionNumber++;
//                 print(questionNumber);
//               },
//               child: const Text("Next Question"))
//         ],
//       ),
//     ));
//   }
