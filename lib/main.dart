import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
   const MyApp({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String _sentence;
  late bool _changed;

  @override
  void initState() {
    _sentence = 'Hello every body';
    _changed = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                _sentence,
                style: TextStyle(
                  color: _changed ? Colors.purple : Colors.green,
                  fontSize: 40.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return _changed ? Colors.white : Colors.black;
                }),
              ),
              onPressed: () {
                setState(() {
                  _changed = !_changed;
                  _sentence = _changed ? 'i like flutter' : 'Hello every body';
                });
              },
              child: Text(
                'Changer',
                style: TextStyle(
                  color: _changed ? const Color.fromARGB(255, 64, 57, 57) :  const Color.fromARGB(255, 86, 107, 241),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
