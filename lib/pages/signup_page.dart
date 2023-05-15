import 'package:flutter/material.dart';

import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_textfield.dart';
import '../components/my_text.dart';

class SignUpPage extends StatefulWidget{
  SignUpPage({super.key});

  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void SignUpUser(){}

  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 52),
                      Icon(Icons.add, size: 60),
                      SizedBox(height: 22),
                      Text(
                        'DAFTAR',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        'selamat datang di beinsoft',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 22),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //nama
                    MyText(text: 'Nama', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.name),
                    const SizedBox(height: 4),

                    //Jenis Kelamin
                    MyText(text: 'Jenis Kelamin', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.text),
                    const SizedBox(height: 4),

                    //Tanggal Lahir
                    MyText(text: 'Tanggal Lahir', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.datetime),
                    const SizedBox(height: 4),

                    //Tempat Lahir
                    MyText(text: 'Tempat Lahir', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.text),
                    const SizedBox(height: 4),

                    //Agama
                    MyText(text: 'Agama', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.text),
                    const SizedBox(height: 4),

                    //Alamat
                    MyText(text: 'Alamat', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.streetAddress),
                    const SizedBox(height: 4),

                    //Provinsi
                    MyText(text: 'Provinsi', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.text),
                    const SizedBox(height: 4),

                    //Kota/Kab
                    MyText(text: 'Kota / Kabupaten', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.text),
                    const SizedBox(height: 4),

                    //Nomor Telepon
                    MyText(text: 'Nomor Telepon', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.number),
                    const SizedBox(height: 4),

                    //Email
                    MyText(text: 'Email', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    MyTextField(hintText: "", obscureText: false, inputType: TextInputType.emailAddress),
                    const SizedBox(height: 4),

                    //password
                    MyText(text: 'Password', fontSize: 12, fontWeight: FontWeight.w400),
                    const SizedBox(height: 2),
                    TextField(
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglevisibility();
                          },
                          child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off, 
                          color: Colors.blue.shade400
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),

                    //Konfirmasi password
                    const Text(
                      'Konfirmasi Password',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                    const SizedBox(height: 2),
                    TextField(
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglevisibility();
                          },
                          child: Icon(
                          _showPassword ? Icons.visibility : Icons
                            .visibility_off, color: Colors.blue.shade400),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),

                    //Tombol Daftar
                    const SizedBox(height: 52),
                    MyCustomButton(text: 'Daftar', onTap: SignUpUser),
                    const SizedBox(height: 52),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}