import 'package:flutter/material.dart';

class MyTextIconButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Icon icon;

  MyTextIconButton({super.key, required this.onTap, required this.icon, required this.text});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 150, 
      child: ElevatedButton.icon(
    onPressed: onTap, 
    icon: icon, 
    label: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Quicksand',
        fontSize: 12,
      ),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 10, vertical: 6)),
      shadowColor: MaterialStatePropertyAll(Colors.black)
    ),
    ) 
    ) ;
  }
}