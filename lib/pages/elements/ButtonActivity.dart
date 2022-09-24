// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonActivity extends StatelessWidget {
  ButtonActivity(
      {required this.onPressed,
      required this.iconPath,
      required this.buttonText});

  final GestureTapCallback onPressed;
  final String iconPath;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 2.0,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        padding: EdgeInsets.all(5.0),
        fixedSize: Size(160.0, 140.0),
        alignment: Alignment.topCenter,
      ),
      child: Column(
        children: [
          Container(
            width: 160,
            height: 80,
            padding: EdgeInsets.all(2.0),
            child: Image.asset(iconPath),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
