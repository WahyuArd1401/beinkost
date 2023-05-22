import 'package:flutter/material.dart';

import 'my_text.dart';
import 'my_white_text.dart';

class MyDataKosCard extends StatelessWidget{
  final Function()? onTap;
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
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Color.fromRGBO(76, 103, 147, 1),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                        MyWhiteText(text: namaKos, fontSize: 12, fontWeight: FontWeight.w600),
                        Row(
                          children: const [
                            Icon(Icons.edit, size: 15, color: Colors.white,),
                            SizedBox(width: 5),
                            Icon(Icons.delete, size: 15, color: Colors.white,),
                          ],
                        ),
                      ],
                    ),
                    MyWhiteText(text: alamatKos, fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            iconGenderPenghuni,
                            MyWhiteText(text: genderPenghuniKos, fontSize: 12, fontWeight: FontWeight.w400),    
                          ],
                        ),                          
                        GestureDetector(
                          child: MyWhiteText(text: 'detail', fontSize: 12, fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}