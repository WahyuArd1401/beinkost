import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget{
  final String text;
  final Function()? onTap;

  MyCustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric( vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(76, 103, 147, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Quicksand',
              color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}