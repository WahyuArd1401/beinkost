// ignore_for_file: prefer_const_constructors_in_immutables
import 'dart:ffi';

import 'package:beinkost/pages/plan/manajemen_plan_page.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

import '../../components/my_custom_button.dart';
import '../../components/my_icon_button.dart';
import '../../components/my_text.dart';

class ReservasiPage extends StatefulWidget {
  ReservasiPage({super.key});

  @override
  State<ReservasiPage> createState() => _ReservasiPage();
}

class _ReservasiPage extends State<ReservasiPage> {
  final _formField = GlobalKey<FormState>();
  final namaController = TextEditingController();
  final pekerjaanController = TextEditingController();
  final genderController = TextEditingController();
  final tempatLahirController = TextEditingController();
  final alamatController = TextEditingController();
  final nomorTeleponController = TextEditingController();
  final emailController = TextEditingController();
  final hargaController = TextEditingController();
  
  String? lantaiValue;
  String? tipeKelasValue;
  String? genderValue;
  String? agamaValue;

  
  bool _checkbox = false;
  
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManajemenPlanPage()));
                  }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 10),

                //Title page
                MyText(text: 'Reservasi', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 5),

                //Data Tamu & Checkbox
                MyText(text: 'Data Tamu', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 9),

                //Nama
                MyText(text: 'Nama', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                TextFormField(
                  controller: namaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "This field required";
                    }
                  },
                ),
                const SizedBox(height: 9),

                // Pekerjaan
                MyText(text: 'Pekerjaan', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                TextFormField(
                  controller: pekerjaanController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "This field required";
                    }
                  },
                ),
                const SizedBox(height: 9),

                //Gender
                MyText(text: 'Gender', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
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
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(value: 'perempuan',child: Text('Perempuan')),
                    DropdownMenuItem(value: 'laki-laki',child: Text('Laki-laki')),
                  ], 
                  onChanged: (value){
                    setState(() {
                      value = genderValue;
                    });
                  },
                  value: genderValue,
                  // validator: (value){
                  //   if(value!.isEmpty){
                  //     return 'This field required';
                  //   }
                  // },
                ),
                const SizedBox(height: 9),

                // Tempat Lahir & Tanggal
                MyText(text: 'Tempat dan Tanggal Lahir', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        controller: tempatLahirController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          contentPadding: const EdgeInsets.all(10),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                    ),

                    SizedBox(
                      width: 150,
                      child: DateTimeFormField(
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
                    )
                  ],
                ),
                const SizedBox(height: 9),
                

                //Agama
                MyText(text: 'Agama', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
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
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(value: 'Islam',child: Text('Islam')),
                    DropdownMenuItem(value: 'Protestan',child: Text('Protestan')),
                    DropdownMenuItem(value: 'Hindu',child: Text('Hindu')),
                    DropdownMenuItem(value: 'Buddha',child: Text('Buddha')),
                    DropdownMenuItem(value: 'Katolik',child: Text('Katolik')),
                  ], 
                  onChanged: (value){
                    setState(() {
                      value = agamaValue;
                    });
                  },
                  value: agamaValue,
                ),
                const SizedBox(height: 9),

                //Alamat
                MyText(text: 'Alamat', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                TextFormField(
                  controller: alamatController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "This field required";
                    }
                  },
                ),
                const SizedBox(height: 9),

                //Nomor telepon
                MyText(text: 'No. Handphone', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                TextFormField(
                  controller: nomorTeleponController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value){
                    bool validNumber = RegExp(r'(^(?:[+0]9)?[0-9]{11,13}$)').hasMatch(value!);
                    if(value.isEmpty){
                      return "This field required";
                    } 
                    else if (!validNumber){
                      return "Enter valid phone number";
                    }
                  },
                ),
                const SizedBox(height: 9),

                //Email
                MyText(text: 'Email', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 6),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value){
                    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                    if(value.isEmpty){
                      return "Enter email";
                    } else if(!emailValid){
                      return "Enter valid email";
                    }
                  },
                ),
                const SizedBox(height: 13),

                //Pemesanan Kamar
                MyText(text: 'Pemesanan Kamar', fontSize: 12, fontWeight: FontWeight.w700),
                SizedBox(height: 9,),

                //Lantai
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: 'Lantai', fontSize: 12, fontWeight: FontWeight.w400),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 220, 
                      child: DropdownButtonFormField(
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
                          DropdownMenuItem(value: '1',child: Text('1')),
                          DropdownMenuItem(value: '2',child: Text('2')),
                          DropdownMenuItem(value: '3',child: Text('3')),
                        ], 
                        onChanged: (value){
                          setState(() {
                            value = lantaiValue;
                          });
                        },
                        value: lantaiValue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9,),

                //Nomor Kamar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: 'Nomor Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 220, 
                      child: DropdownButtonFormField(
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
                          DropdownMenuItem(value: '1',child: Text('1')),
                          DropdownMenuItem(value: '2',child: Text('2')),
                          DropdownMenuItem(value: '3',child: Text('3')),
                          DropdownMenuItem(value: '4',child: Text('4')),
                          DropdownMenuItem(value: '5',child: Text('5')),
                          DropdownMenuItem(value: '6',child: Text('6')),
                        ], 
                        onChanged: (value){
                          setState(() {
                            value = lantaiValue;
                          });
                        },
                        value: lantaiValue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9,),

                //Tipe Kelas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: 'Tipe Kelas', fontSize: 12, fontWeight: FontWeight.w400),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 220, 
                      child: DropdownButtonFormField(
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
                          DropdownMenuItem(value: '1',child: Text('1')),
                          DropdownMenuItem(value: '2',child: Text('2')),
                          DropdownMenuItem(value: '3',child: Text('3')),
                        ], 
                        onChanged: (value){
                          setState(() {
                            value = tipeKelasValue;
                          });
                        },
                        value: tipeKelasValue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9,),

                //Harga
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: 'Harga', fontSize: 12, fontWeight: FontWeight.w400),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 220, 
                      child: TextFormField(
                        controller: hargaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          contentPadding: const EdgeInsets.all(10),
                        ),
                        validator: (value){
                          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                          if(value.isEmpty){
                            return "Enter email";
                          } else if(!emailValid){
                            return "Enter valid email";
                          }
                        },
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 40),
                MyCustomButton(
                  text: 'Simpan', 
                  onTap: (){
                    if(_formField.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ManajemenPlanPage()));
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