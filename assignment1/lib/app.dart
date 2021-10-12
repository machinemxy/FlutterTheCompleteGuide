import 'package:flutter/material.dart';

import 'counter.dart';
import 'count_button.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Assignment1"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Counter(count: _count),
                CountButton(onPressedHandler: () {
                  setState(() {
                    _count += 1;
                  });
                }),
              ],
            ),
          )),
    );
  }
}
