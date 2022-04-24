
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'constants.dart';

enum Gender{male,female,trans}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender selectedGender= Gender.trans;
  int height = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D22),
        title: const Center(
          child: Text('BMI CALCULATOR',
            style: TextStyle(
              fontSize: 26.0,
              letterSpacing: 0.00001,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(children: [
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                      colour: selectedGender==Gender.male?activeCardColor:inactiveCardColor,
                      cardChild: IconContent(
                          fontIcon: FontAwesomeIcons.mars,
                          gender:'MALE')
                  ),
                )
            ),
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                     colour:selectedGender==Gender.female?activeCardColor:inactiveCardColor,
                     cardChild: IconContent(
                         fontIcon: FontAwesomeIcons.venus,
                         gender: 'FEMALE')
                  ),
                )
            ),
          ],)
          ),
          Expanded(
              child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF8D8E98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),
                          style: textStyle
                          ),
                          Text('cm',
                              style: TextStyle(
                                fontSize: 20.0
                              )
                          )
                        ],
                      ),

                    ],
                  )
              )
          ),
          Expanded(
              child: Row(children: [
            Expanded(
                child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      fontIcon: FontAwesomeIcons.mars,
                      gender: '')
                )
            ),
            Expanded(
                child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      fontIcon: FontAwesomeIcons.mars,
                      gender: '')
                )
              ),
            ],)
          ),
          Container(
            color: containerColor,
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}