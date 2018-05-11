import 'package:flutter/material.dart';

import 'landing_page.dart';

class ScorePage extends StatelessWidget {
  ScorePage(this.score, this.totalQuestions);

  final int score;
  final int totalQuestions;

  final _fontStyle = TextStyle(
    color: Colors.white,
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You Score: ', style: _fontStyle),
            Text('$score / $totalQuestions', style: _fontStyle),
            Container(height: 12.0),
            IconButton(
              icon: Icon(Icons.arrow_right),
              color: Colors.white,
              iconSize: 120.0,
              onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LandingPage(),
                    ),
                  ),
            ),
          ],
        ),
      );
}
