// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/pages/kontrak/edit_data_kontrak_page.dart';
import 'package:beinkost/pages/kontrak/manajemen_kontrak_page.dart';
import 'package:flutter/material.dart';

import '../../components/my_text.dart';

class DetailKontrakPage extends StatelessWidget {
  
  DetailKontrakPage({super.key});

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 30, 33, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Button Arrow Back
                const SizedBox(height: 10,),
                MyIconButton(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManajemenKontrakPage()));
                }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 15),

                //Title page
                MyText(text: 'Detail Kontrak', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 36),

                //Column Detail
                MyText(text: 'Posisi', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Tukang Kebun', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tipe Kontrak', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Permanen', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Kelas', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '1', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Gaji', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Rp. 500.000', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Periode Kontrak', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Permanen', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tanggal Kontrak', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '15/05/2023', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 50,),

                //Button Edit
                SizedBox(
                  width: double.infinity, 
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditDataKontrakPage()));
                    }, 
                    icon: const Icon(Icons.edit), 
                    label: const Text('Edit Data'),
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )
                      )
                    ),
                  ),
                ),                
              ],
            )
          ),
        )
      ),
    );
  }
  
}