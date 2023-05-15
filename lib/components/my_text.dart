import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight fontWeight;
  
  MyText({super.key, required this.text, required this.fontSize, required this.fontWeight});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: fontWeight
      ),
    );
  }
}