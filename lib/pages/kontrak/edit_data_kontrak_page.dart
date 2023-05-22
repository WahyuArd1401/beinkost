// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:ffi';

import 'package:beinkost/pages/kontrak/detail_kontrak.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

import '../../components/my_custom_button.dart';
import '../../components/my_icon_button.dart';
import '../../components/my_text.dart';
import 'manajemen_kontrak_page.dart';

class EditDataKontrakPage extends StatefulWidget {
  EditDataKontrakPage({super.key});

  @override
  State<EditDataKontrakPage> createState() => _EditDataKontrakPage();
}

class _EditDataKontrakPage extends State<EditDataKontrakPage> {
  final _formField = GlobalKey<FormState>();
  final posisiController = TextEditingController();
  final gajiController = TextEditingController();
  final periodeKontrakController = TextEditingController();
  final tanggalKontrakController = TextEditingController();
  
  String? tipeKontrakValue;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 20, 27, 26),
            child: Form(
              key: _formField,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Back button
                MyIconButton(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKontrakPage()));
                  }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 10),

                //Title page
                MyText(text: 'Edit Data Kontrak', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 20),

                // Posisi
                MyText(text: 'Posisi', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: posisiController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "This field required";
                    }
                  },
                ),
                const SizedBox(height: 4),

                //Tipe Kontrak
                MyText(text: 'Tipe Kontrak', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(value: 'Permanen',child: Text('Permanen')),
                    DropdownMenuItem(value: 'Kontrak',child: Text('Kontrak')),
                  ], 
                  onChanged: (value){
                    setState(() {
                      value = tipeKontrakValue;
                    });
                  },
                  value: tipeKontrakValue,
                  // validator: (value){
                  //   if(value!.isEmpty){
                  //     return 'This field required';
                  //   }
                  // },
                ),
                const SizedBox(height: 4),

                // Kelas
                MyText(text: 'Kelas', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(value: '1',child: Text('Kelas 1')),
                    DropdownMenuItem(value: '2',child: Text('Kelas 2')),
                    DropdownMenuItem(value: '3',child: Text('Kelas 3')),
                  ], 
                  onChanged: (value){
                    setState(() {
                      value = tipeKontrakValue;
                    });
                  },
                  value: tipeKontrakValue,
                  // validator: (value){
                  //   if(value!.isEmpty){
                  //     return 'This field required';
                  //   }
                  // },
                ),
                const SizedBox(height: 4),

                //Gaji
                MyText(text: 'Gaji', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: gajiController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "This field required";
                    }
                  },
                ),
                const SizedBox(height: 4),

                //Periode Kontrak
                MyText(text: 'Periode Kontrak', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(
                      width: 250, 
                      child: TextFormField(
                        controller: periodeKontrakController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          contentPadding: const EdgeInsets.all(10)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 5,),
                    MyText(text: 'Bulan', fontSize: 12, fontWeight: FontWeight.w400),
                  ],
                ),
                
                const SizedBox(height: 4),

                //Tanggal Kontrak
                MyText(text: 'Tanggal Kontrak', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                DateTimeFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    suffixIcon: const Icon(Icons.event_note, color: Color.fromRGBO(76, 103, 147, 1),),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.always,
                  // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  validator: (e){
                    if((e?.day ?? 0) == 1){
                      return 'Please not the first day';
                    }
                  }
                ),

                const SizedBox(height: 40),
                MyCustomButton(
                  text: 'Simpan', 
                  onTap: (){
                    if(_formField.currentState!.validate()){
                      
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>DataKosPage()));
                    }
                  }
                ),
              ],
            ),
            ),
          ),
        )
      ),
    );
  }
}