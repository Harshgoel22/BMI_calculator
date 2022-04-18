import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(),
    );
  }
}

