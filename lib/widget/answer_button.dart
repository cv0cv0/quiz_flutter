import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this._answer, this._onTap);

  final bool _answer;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Material(
          color: _answer ? Colors.greenAccent : Colors.redAccent,
          child: InkWell(
            onTap: () => _onTap(),
            child: Center(
              child: Text(
                _answer ? 'True' : 'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ),
      );
}
