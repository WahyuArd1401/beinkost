// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:io';

import 'package:beinkost/pages/kamar/data_kamar_page.dart';
import 'package:flutter/material.dart';
import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_icon_button.dart';
import 'package:image_picker/image_picker.dart';
import '../../components/my_text.dart';

class InputDataKamarPage extends StatefulWidget{
  InputDataKamarPage({super.key});

  @override
  State<InputDataKamarPage> createState() => _InputDataKamarPage();
}

class _InputDataKamarPage extends State<InputDataKamarPage>{
  String? teganganValue;

  final _formField = GlobalKey<FormState>();
  final tipeKamarController = TextEditingController();
  final nomorKamarController = TextEditingController();
  final lantaiController = TextEditingController();
  final ukuranController = TextEditingController();
  final viewController = TextEditingController();
  final kapasitasController = TextEditingController();
  final hargaController = TextEditingController();

  //Upload Image
  File? image;
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked = await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {
      
    });
  }
  showInputSuccess(){
    showDialog(
      // barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(8),
          content: SizedBox(
            width: 100,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.check, size: 40, color: Colors.green,),
                SizedBox(height: 10,),
                Text('Input Data Kamar Berhasil!'),
                SizedBox(height: 30,),
              ],
            ),
          ),
        );
      }
    );
  }

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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DataKamarPage()));
                    }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                  const SizedBox(height: 10),

                  //Title Page
                  MyText(text: 'Input Data Kamar', fontSize: 24, fontWeight: FontWeight.w600),
                  const SizedBox(height: 19),

                  //Tipe Kamar
                  MyText(text: 'Tipe Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: tipeKamarController,
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
                  const SizedBox(height: 9),

                  //Nomor Kamar
                  MyText(text: 'Nomor Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: nomorKamarController,
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
                  const SizedBox(height: 9),

                  //Lantai
                  MyText(text: 'Lantai', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: lantaiController,
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
                  const SizedBox(height: 9),

                  //Ukuran
                  MyText(text: 'Ukuran', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: ukuranController,
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
                  const SizedBox(height: 9),

                  //View
                  MyText(text: 'View', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: viewController,
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
                  const SizedBox(height: 9),

                  //Tegangan Listrik
                  MyText(text: 'Tegangan listrik', fontSize: 12, fontWeight: FontWeight.w400),
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
                          DropdownMenuItem(value: '450 Kwh',child: Text('450 Kwh')),
                          DropdownMenuItem(value: '900 Kwh',child: Text('900 Kwh')),
                          DropdownMenuItem(value: '1200 Kwh' ,child: Text('1200 Kwh')),
                        ], 
                        onChanged: (value){
                          setState(() {
                            value = teganganValue;
                          });
                        },
                        value: teganganValue,
                        // validator: (value){
                        //   if(value!.isEmpty){
                        //     return 'This field required';
                        //   }
                        // },
                      ),
                  const SizedBox(height: 9),

                  //Kapasitas
                  MyText(text: 'kapasitas', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
                  controller: kapasitasController,
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
                  const SizedBox(height: 9),

                  //Harga
                  MyText(text: 'Harga', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 4),
                  TextFormField(
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
                      contentPadding: const EdgeInsets.all(10)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "This field required";
                      }
                    },
                  ),
                  const SizedBox(height: 9),

                  //Upload image
                  MyText(text: 'Upload Foto', fontSize: 12, fontWeight: FontWeight.w700),
                  const SizedBox(height: 4),
                  Column(
                    children: [
                      image != null ? SizedBox(
                        height: 200, 
                        width: MediaQuery.of(context).size.width,
                        child: Image.file(image!, fit: BoxFit.cover,)) : Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: const Color.fromRGBO(76, 103, 147, 1),
                              ),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              icon : const Icon(Icons.add_circle,size: 30, color: Color.fromRGBO(76, 103, 147, 1)), 
                              onPressed: () async {  
                                await getImage();
                              },
                            ),
                          ),
                    ],
                  ),
                  const SizedBox(height: 59),

                  //Button Simpan
                  MyCustomButton(text: 'Simpan', onTap: (){
                    if(_formField.currentState!.validate()){
                      showInputSuccess();
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>DataKosPage()));
                    }
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}