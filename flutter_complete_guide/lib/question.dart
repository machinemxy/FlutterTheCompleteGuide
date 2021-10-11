import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({ Key? key, required this.questionText }) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}