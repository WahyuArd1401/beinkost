import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  final Icon icon;
  final String judul;
  final String deskripsi;
  final String jumlah;

  MyCard({super.key, required this.icon,required this.judul, required this.deskripsi, required this.jumlah});

  @override
  Widget build(BuildContext context){
    return Card(
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  const SizedBox(height: 10),
                  MyText(text: judul, fontSize: 20, fontWeight: FontWeight.w600),
                  const SizedBox(height: 5),
                  MyText(text: deskripsi, fontSize: 12, fontWeight: FontWeight.w400)
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child : MyText(text: jumlah, fontSize: 60, fontWeight: FontWeight.bold),  
              ),
            ],
          ),
        ),
      ),
    );
  }
}