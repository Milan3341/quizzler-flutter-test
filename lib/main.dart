import 'dart:math';

import 'package:flutter/material.dart';
import 'quizbrain.dart';

Quizbrain quizbrain = Quizbrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
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
  List<Icon> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Container(
              child: Text(
                quizbrain.getQQuestionText(Random().nextInt(13) - 0),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                bool correctanswers =
                    quizbrain.getCCorectanswers(Random().nextInt(13) - 0);
                if (correctanswers == true) {
                  print('the user got it right');
                } else {
                  print('the user got it wrong');
                }
                setState(() {
                  quizbrain.nextquestion();
                });
              },
              child: Container(
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                bool correctanswers =
                    quizbrain.getCCorectanswers(Random().nextInt(13) - 0);
                if (correctanswers == false) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }
                setState(() {
                  quizbrain.nextquestion();
                });
              },
              child: Container(
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [],
        )
      ],
    );
  }
}
