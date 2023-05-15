import 'package:flutter/material.dart';

class MySliderCard extends StatelessWidget {
  String urlImage;

  MySliderCard({super.key, required this.urlImage});
  
  @override
  Widget build(BuildContext context){
    return Container(
			margin: const EdgeInsets.all(6.0),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(8.0),
				image: DecorationImage(
				  image: NetworkImage(urlImage),
			    fit: BoxFit.cover,
				),
			),
		);
  }
}