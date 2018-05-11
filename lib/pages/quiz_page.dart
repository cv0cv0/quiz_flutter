import 'package:flutter/material.dart';

import '../widget/answer_button.dart';
import '../widget/question_text.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AnswerButton(true, () => print('You answered true')),
              QuestionText(),
              AnswerButton(false, () => print('You answered false')),
            ],
          ),
        ],
      );
}
