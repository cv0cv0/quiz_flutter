import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
    color: Colors.blueAccent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('You Score: '),
        Text('2/3'),
        IconButton(
          icon: Icon(Icons.arrow_right),
          onPressed: () => print('Cool'),
        ),
      ],
    ),
  );
}