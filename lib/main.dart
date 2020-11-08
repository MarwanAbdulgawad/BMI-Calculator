import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Result.dart';
import 'Start Page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StartPage(),
      routes: {
        'home': (context)=>StartPage(),
        'inputs' : (context) => InputPage(),
        'result' : (context) => ResultPage()

    },
    );
  }
}
