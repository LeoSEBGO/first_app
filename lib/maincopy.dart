import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'First app',
        home: Scaffold(
          body: Center(
              child: Text(
            'Hello, i love flutter',
            style: (TextStyle(color: Color.fromARGB(255, 56, 200, 161))),
          )),
        ));
  }
}
