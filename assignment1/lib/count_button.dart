import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  final VoidCallback onPressedHandler;

  const CountButton({Key? key, required this.onPressedHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressedHandler, child: const Text("+1"));
  }
}
