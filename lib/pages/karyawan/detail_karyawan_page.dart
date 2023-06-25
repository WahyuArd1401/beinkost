// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/pages/karyawan/edit_data_karyawan.dart';
import 'package:beinkost/pages/kontrak/edit_data_kontrak_page.dart';
import 'package:beinkost/pages/kontrak/manajemen_kontrak_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';

import '../../components/my_text.dart';

class DetailKaryawanPage extends StatelessWidget {
  
  DetailKaryawanPage({super.key});

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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 15),

                //Title page
                MyText(text: 'Detail Karyawan', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 36),

                //Nama
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(text: 'Udin Tonykalu', fontSize: 24, fontWeight: FontWeight.bold),
                  ],
                ),
                const SizedBox(height: 36),

                //Column Detail
                MyText(text: 'Email', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'udinTK@gmail.com', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'No HP', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: '081222233344', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Gender', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Laki-laki', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Kos', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Permata', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Tanggal & Tempat Lahir', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Malang, 29/02/1998', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Agama', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Islam', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 5,),

                MyText(text: 'Alamat', fontSize: 14, fontWeight: FontWeight.w700),
                const SizedBox(height: 8,),
                MyText(text: 'Jalan Ikhlas No 1', fontSize: 14, fontWeight: FontWeight.w400),
                const Divider(thickness: 1, color: Color.fromRGBO(76, 103, 147, 1)),
                const SizedBox(height: 50,),

                //Button Edit
                SizedBox(
                  width: double.infinity, 
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditDataKaryawanPage()));
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