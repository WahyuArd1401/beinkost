import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {

  final String text;
  final Color textColor;
  final Function()? onTap;

  MyTextButton({super.key, required this.text, required this.textColor, required this.onTap});
  
  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.normal
        ),
      )
      );
  }
}