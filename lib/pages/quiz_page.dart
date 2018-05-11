import 'package:flutter/material.dart';

import '../widget/answer_button.dart';
import '../widget/question_text.dart';
import '../widget/correct_wrong_overlay.dart';

import '../model/question.dart';
import '../model/quiz.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Question currentQuestion;
  Quiz quiz = Quiz([
    Question('Elon Musk is human', false),
    Question('Pizza is healthy', false),
    Question('Flutter is awesome', true),
  ]);

  String questionText;
  int questionNumber;
  bool isCorrect;

  bool overlayShouldBeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              AnswerButton(true, () => handleAnswer(true)),
              QuestionText(questionText, questionNumber),
              AnswerButton(false, () => handleAnswer(false)),
            ],
          ),
          overlayShouldBeVisible
              ? CorrectWrongOverlay(
                  isCorrect,
                  () {
                    currentQuestion = quiz.nextQuestion;
                    setState(() {
                      overlayShouldBeVisible = false;
                      questionText = currentQuestion.question;
                      questionNumber = quiz.questionNumber;
                    });
                  },
                )
              : Container(),
        ],
      );

  void handleAnswer(bool answer) {
    isCorrect = currentQuestion.answer == answer;
    quiz.answer(isCorrect);

    setState(() {
      overlayShouldBeVisible = true;
    });
  }
}
