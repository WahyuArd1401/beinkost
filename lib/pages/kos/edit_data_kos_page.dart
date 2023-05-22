// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors_in_immutables

import 'dart:io';
import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:beinkost/components/my_custom_button.dart';
import '../../components/my_text.dart';


// ignore: empty_constructor_bodies
class EditDataKosPage extends StatefulWidget {  
  EditDataKosPage({super.key});

  @override
  State<EditDataKosPage> createState() => _EditDataKosPage();
}

class _EditDataKosPage extends State<EditDataKosPage>{
  
  //Controller
  final _formField = GlobalKey<FormState>();
  final namaKosController = TextEditingController();
  final alamatKosController = TextEditingController();
  final genderController = TextEditingController();
  final keteranganController = TextEditingController();

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
                Text('Input Data Kos Berhasil!'),
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                  }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 10),

                //Title page
                MyText(text: 'Edit Data Kos', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 20),

                // Nama Kos
                MyText(text: 'Nama Kos', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: namaKosController,
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

                //Alamat kos
                MyText(text: 'Alamat Kos', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: alamatKosController,
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

                //Gender
                MyText(text: 'Gender', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: genderController,
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

                //Keterangan
                MyText(text: 'Keterangan', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                TextFormField(
                  controller: keteranganController,
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
                      const SizedBox(height: 4),
                  ],
                ),
                const SizedBox(height: 40),
                MyCustomButton(
                  text: 'Simpan', 
                  onTap: (){
                    if(_formField.currentState!.validate()){
                      showInputSuccess();
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