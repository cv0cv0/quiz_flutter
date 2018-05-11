import 'package:flutter/material.dart';

import './quiz_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        color: Colors.greenAccent,
        child: InkWell(
          onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => QuizPage(),
                ),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Lets Quizzz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(height: 30.0),
              Text(
                'Tap to start!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
