import 'package:flutter/material.dart';

import 'pages/landing_page.dart';
import 'pages/score_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Quiz',
        home: ScorePage(),
      );
}
