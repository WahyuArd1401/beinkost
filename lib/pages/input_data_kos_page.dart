import 'dart:io';
import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/pages/data_kos_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:beinkost/components/my_custom_button.dart';
import '../components/my_text.dart';
import '../components/my_textfield.dart';


// ignore: empty_constructor_bodies
class InputDataKosPage extends StatefulWidget {  
  InputDataKosPage({super.key});

  @override
  State<InputDataKosPage> createState() => _InputDataKosPage();
}

class _InputDataKosPage extends State<InputDataKosPage>{
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked = await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyIconButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DataKosPage()));
                  }, 
                  icon: const Icon(Icons.close, size: 15)
                ),
                const SizedBox(height: 10),
                MyText(text: 'Input Data Kos', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 20),
                MyText(text: 'Nama Kos', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.name),
                const SizedBox(height: 4),
                MyText(text: 'Alamat Kos', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.streetAddress),
                const SizedBox(height: 4),
                MyText(text: 'Gender', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.text),
                const SizedBox(height: 4),
                MyText(text: 'Keterangan', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.text),
                const SizedBox(height: 4),
                MyText(text: 'Upload Foto', fontSize: 12, fontWeight: FontWeight.w700),
                const SizedBox(height: 4),
                Column(
                  children: [
                    image != null ? Container(
                      height: 200, 
                      width: MediaQuery.of(context).size.width,
                      child: Image.file(image!, fit: BoxFit.cover,)) : Container(),
                      const SizedBox(height: 4),
                      MyCustomButton(text: 'Pilih Foto', onTap: () async {
                        await getImage();
                      }),
                  ],
                ),
                const SizedBox(height: 100),
                MyCustomButton(
                  text: 'Simpan', 
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DataKosPage()));
                  }
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}