import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Center(
          child: Text('BMI CALCULATOR',
            style: TextStyle(
              fontSize: 26.0,
              letterSpacing: 0.00001,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(children: [
            Expanded(child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
            ),
            Expanded(child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
            )
          ],)),
          Expanded(child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
          ),
          Expanded(child: Row(children: [
            Expanded(child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0)
              ),
            )
            ),
            Expanded(child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
            )
          ],))
        ],
      ),
    );
  }
}

