import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final Function()? onTap;
  final Icon icon;

  MyIconButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onTap,
      child: icon,
    );
  }
  
}