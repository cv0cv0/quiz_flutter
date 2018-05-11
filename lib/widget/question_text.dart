import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  QuestionText(this._question, this._questionNumber);

  final String _question;
  final int _questionNumber;

  @override
  State<StatefulWidget> createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) => Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Text('Statement 1: Pizza is nice'),
          ),
        ),
      );
}
