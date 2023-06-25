// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/pages/kontrak/edit_data_kontrak_page.dart';
import 'package:beinkost/pages/kontrak/manajemen_kontrak_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';

import '../../components/my_text.dart';
import 'manajemen_plan_page.dart';

class DetailManajemenPlanPage extends StatelessWidget {
  
  DetailManajemenPlanPage({super.key});

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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManajemenPlanPage()));
                }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 15),

                //Title page
                MyText(text: 'Stewie Griffin', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 36),

                //Column Detail
                MyText(text: 'Email', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'stewiegriff11@gmail.com', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'No HP', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '081321567890', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Gender', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Laki-Laki', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Pekerjaan', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Mahasiswa', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tanggal & Tempat Lahir', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Surabaya, 15/03/2000', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Lantai', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '2', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Nomor Kamar', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '2', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tipe Kelas', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '1', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tanggal Masuk', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '1 Maret 1975', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tanggal Keluar', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '1 Maret 1976', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Harga', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '700.000', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 50,),

                //Button Edit
                SizedBox(
                  width: double.infinity, 
                  child: ElevatedButton.icon(
                    onPressed: (){
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditDataKontrakPage()));
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