

import 'dart:ui';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/final_result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'final_result.dart';
import 'constants.dart';

enum Gender{male,female,trans}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender selectedGender= Gender.trans;
  int height = 95;
  int weight = 50;
  int age = 17;

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
                      colour: selectedGender==Gender.male?kactiveCardColor:kinactiveCardColor,
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
                     colour:selectedGender==Gender.female?kactiveCardColor:kinactiveCardColor,
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
                  colour: kactiveCardColor,
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
                          style: ktextStyle
                          ),
                          Text('cm',
                              style: TextStyle(
                                fontSize: 20.0
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                height++;
                              });
                            },
                            backgroundColor: kinactiveCardColor,
                            child: Icon(Icons.add,
                            color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                height--;
                              });
                            },
                            backgroundColor: kinactiveCardColor,
                            child: Icon(Icons.remove,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              )
          ),
          Expanded(
              child: Row(children: [
            Expanded(
                child: ReusableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF8D8E98),
                         ),
                        ),
                        Text(weight.toString(),
                          style: ktextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: kinactiveCardColor,
                              child: Icon(Icons.add,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: kinactiveCardColor,
                              child: Icon(Icons.remove,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                )
            ),
            Expanded(
                child: ReusableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(age.toString(),
                          style: ktextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: kinactiveCardColor,
                              child: Icon(Icons.add,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: kinactiveCardColor,
                              child: Icon(Icons.remove,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                )
              ),
            ],)
          ),
          Container(
            color: kcontainerColor,
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Final_result())
                    );
                },
                child: Text('CALCULATE',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon,required this.onPressed});

  final IconData icon;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed(),
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
