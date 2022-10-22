import 'package:flutter/material.dart';
import 'input_page.dart';
import 'themes.dart';
import 'result_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme(),
      initialRoute: '/input',
      routes: {
        '/input': (context) => const InputPage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
