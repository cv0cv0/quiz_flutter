import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  QuestionText(this._question, this._questionNumber);

  final String _question;
  final int _questionNumber;

  @override
  State<StatefulWidget> createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {
  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState() {
    super.initState();
    _fontSizeAnimationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _fontSizeAnimation = CurvedAnimation(
        parent: _fontSizeAnimationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => setState(() {}));
    _fontSizeAnimationController.forward();
  }

  @override
    void didUpdateWidget(QuestionText oldWidget) {
      super.didUpdateWidget(oldWidget);
      if (widget._question != oldWidget._question) {
        _fontSizeAnimationController.reset();
        _fontSizeAnimationController.forward();
      }
    }

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Text(
              'Statement ${widget._questionNumber}: ${widget._question}',
              style: TextStyle(fontSize: _fontSizeAnimation.value * 15),
            ),
          ),
        ),
      );
}
