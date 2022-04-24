

import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {

  IconContent({required this.fontIcon,required this.gender});

  final IconData fontIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            fontIcon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            gender,
            style: labelTextStyle,
          ),
        ],
      ),
    );
  }
}