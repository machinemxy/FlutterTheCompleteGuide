import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartHandler;

  const Result(
      {Key? key, required this.resultScore, required this.restartHandler})
      : super(key: key);

  String get resultPhrase {
    return 'You did it! Your score is ' + resultScore.toString() + '!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: restartHandler, child: const Text('Restart Quiz!')),
      ],
    );
  }
}
