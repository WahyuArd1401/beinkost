// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyBlackText extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight fontWeight;
  
  MyBlackText({super.key, required this.text, required this.fontSize, required this.fontWeight});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.black
      ),
    );
  }
}