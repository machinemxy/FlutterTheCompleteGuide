import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = const [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My First App'),),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              child: const Text('Answer 1'), 
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Answer 2'), 
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Answer 3'), 
              onPressed: _answerQuestion,
            ),
          ],
        ),
      )
    );
  }
}
