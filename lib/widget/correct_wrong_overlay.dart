import 'dart:math';

import 'package:flutter/material.dart';

class CorrectWrongOverlay extends StatefulWidget {
  CorrectWrongOverlay(this._isCorrect, this._onTap);

  final bool _isCorrect;
  final VoidCallback _onTap;

  @override
  State<StatefulWidget> createState() => _CorrectWrongOverlayState();
}

class _CorrectWrongOverlayState extends State<CorrectWrongOverlay>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.elasticOut);
    _iconAnimation.addListener(() => setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.black54,
        child: InkWell(
          onTap: () => widget._onTap(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Transform.rotate(
                  angle: _iconAnimation.value * 2 * pi,
                  child: Icon(
                    widget._isCorrect ? Icons.done : Icons.clear,
                    size: _iconAnimation.value * 80.0,
                  ),
                ),
              ),
              Text(
                widget._isCorrect ? 'Correct' : 'Wrong',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      );

      @override
        void dispose() {
          _iconAnimationController.dispose();
          super.dispose();
        }
}
