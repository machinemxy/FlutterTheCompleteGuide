import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int count;

  const Counter({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      count.toString(),
      style: const TextStyle(fontSize: 32),
    );
  }
}
