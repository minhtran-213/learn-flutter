import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What \'s your favorite color?',
      'What \'s your favorite animal'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(question[_questionIndex]),
        ),
        body: Column(
          children: [
            Text(question[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
