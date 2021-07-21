import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Quizpage()),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({Key key}) : super(key: key);

  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            'You can lead a cow down stairs but not up stairs.',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    );
  }
}
