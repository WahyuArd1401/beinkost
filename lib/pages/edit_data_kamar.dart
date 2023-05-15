import 'dart:ffi';
import 'package:flutter/material.dart';

import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_textfield.dart';
import '../components/my_text.dart';

class EditDataKamar extends StatefulWidget{
  const EditDataKamar({super.key});

  @override
  State<EditDataKamar> createState() => _EditDataKamar();
}

class _EditDataKamar extends State<EditDataKamar>{
  String? _value;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 53),
                //close
                MyIconButton(
                  onTap: (){}, 
                  icon: const Icon(
                    Icons.close, 
                    size: 15
                  ),
                ),

                const SizedBox(height: 9),
                MyText(text: 'Edit Data Kamar', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 19),

                //Tipe Kamar
                MyText(text: 'Tipe Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.name),
                const SizedBox(height: 9),

                //Nomor Kamar
                MyText(text: 'Nomor Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.number),
                const SizedBox(height: 9),

                //Lantai
                MyText(text: 'Lantai', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.number),
                const SizedBox(height: 9),

                //Ukuran
                MyText(text: 'Ukuran', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.text),
                const SizedBox(height: 9),

                //View
                MyText(text: 'View', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.text),
                const SizedBox(height: 9),

                //Tegangan Listrik
                MyText(text: 'Tegangan listrik', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                DropdownButton<String>(
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem<String>(
                      value: '450',
                      child: Text('450 Kwh'),
                    ),
                    DropdownMenuItem<String>(
                      value: '900',
                      child: Text('900 Kwh'),
                    ),
                    DropdownMenuItem<String>(
                      value: '1200',
                      child: Text('1200 Kwh'),
                    ),
                  ], 
                  onChanged: (String? value){
                    setState(() {
                      _value = value;
                    }); 
                  },
                  hint: const Text('Pilih item'),
                  value: _value,
                ),
                const SizedBox(height: 9),

                //Kapasitas
                MyText(text: 'kapasitas', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.number),
                const SizedBox(height: 9),

                //Harga
                MyText(text: 'Harga', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 4),
                MyTextField(hintText: '', obscureText: false, inputType: TextInputType.number),
                const SizedBox(height: 9),

                //Upload Foto

                //Button Simpan
                MyCustomButton(text: 'Simpan', onTap: (){}),

              ],
            ),
          ),
        ),
      ),
    );
  }
}