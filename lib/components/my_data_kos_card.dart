import 'package:flutter/material.dart';

import 'my_text.dart';

class MyDataKosCard extends StatelessWidget{
  final String urlImage;
  final String namaKos;
  final String alamatKos;
  final Icon iconGenderPenghuni;
  final String genderPenghuniKos;

  MyDataKosCard({
    super.key, 
    required this.urlImage,
    required this.namaKos, 
    required this.alamatKos, 
    required this.genderPenghuniKos, 
    required this.iconGenderPenghuni, 
  });

  @override
  Widget build(BuildContext context){
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48),
              child: Image.asset(urlImage),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: namaKos, fontSize: 12, fontWeight: FontWeight.w600),
                      Row(
                        children: const [
                          Icon(Icons.edit, size: 15,),
                          SizedBox(width: 5),
                          Icon(Icons.delete, size: 15),
                        ],
                      ),
                    ],
                  ),
                  MyText(text: alamatKos, fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          iconGenderPenghuni,
                          MyText(text: genderPenghuniKos, fontSize: 12, fontWeight: FontWeight.w400),    
                        ],
                      ),                          
                      GestureDetector(
                        child: MyText(text: 'detail', fontSize: 12, fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}