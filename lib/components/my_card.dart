import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget{
  final FaIcon icon;
  final String judul;
  final String deskripsi;
  final String jumlah;

  MyCard({super.key, required this.icon,required this.judul, required this.deskripsi, required this.jumlah,});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Card(
        color: const Color.fromRGBO(76, 103, 147, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  const SizedBox(height: 10),
                  Text(
                    judul,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child : Text(
                    jumlah,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}