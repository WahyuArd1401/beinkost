import 'package:beinkost/components/my_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page')
      ),
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
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      //nama
                      Text(
                        'Nama',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      SizedBox(height: 2),
                      MyTextField(hintText: "", obscureText: false, TextInputType: TextInputType.name),
                      SizedBox(height: 4),

                      //Jenis Kelamin
                      Text(
                        'Jenis Kelamin',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      SizedBox(height: 2),
                      MyTextField(hintText: "", obscureText: false, TextInputType: TextInputType.text),
                      SizedBox(height: 4),

                      //Tanggal Lahir
                      Text(
                        'Tanggal Lahir',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      SizedBox(height: 2),
                      MyTextField(hintText: "", obscureText: false, TextInputType: TextInputType.datetime),
                      SizedBox(height: 4),

                      //Tempat Lahir
                      //Agama
                      //Alamat
                      //Provinsi
                      //Kota/Kab
                      //Nomor Telepon
                      //Email
                      //password
                      //Konfirmasi password
                      //Tombol Daftar
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}