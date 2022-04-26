import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusableCard.dart';

import 'constants.dart';

class FinalResult extends StatelessWidget {

  FinalResult({required this.output,required this.bmi,required this.interpetetion});

  final String output;
  final String bmi;
  final String interpetetion;

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0D22),
          title: Center(
            child: Text('BMI CALCULATOR',
               style: TextStyle(
               fontSize: 26.0,
               letterSpacing: 0.00001,
               )
            ),
          ),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Text('Your Result',
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
            ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            colour: kactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(output,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                ),
                ),
                Text(bmi,
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.w900,
                ),
                ),
                Text(interpetetion,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: kcontainerColor,
          height: 80.0,
          width: double.infinity,
          margin: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('RECALCULATE',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    ),
    ),
    );
  }
}