// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';

class MyListDetailKamar extends StatelessWidget {
  final Icon myIconList;
  final String myDeskripsiList; 

  MyListDetailKamar({super.key, required this.myIconList, required this.myDeskripsiList});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            myIconList,
            SizedBox(width: 3,),
            MyText(text: myDeskripsiList, fontSize: 12, fontWeight: FontWeight.w400),
          ],
        ),
        SizedBox(height: 2,)
      ],
    );
  }
}