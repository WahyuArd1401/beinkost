// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/reset%20password%20page/third_reset_password_page.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:flutter/material.dart';
import '../../components/my_custom_button.dart';
import '../../components/my_text_button.dart';

class SecondResetPasswordPage extends StatelessWidget {
  SecondResetPasswordPage({super.key});

  void onPressed(){}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 43, 33, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Logo
                const Image(image: AssetImage('assets/images/logo-kost.jpg'), width: 87, height: 87,),
                const SizedBox(height: 138),

                //Text
                MyText(text: 'Cek Email Kamu!', fontSize: 24, fontWeight: FontWeight.w600),
                MyText(text: 'Link reset password telah dikirim ke \nbein***@gmail.com', fontSize: 12, fontWeight: FontWeight.w400),
                const SizedBox(height: 39),

                //Button Reset Password
                MyCustomButton(text: 'Reset Password', onTap: (){
                  Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder:(context) => ThirdResetPasswordPage())
                  );
                }),

                //Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(text: 'Belum menerima email?', fontSize: 12, fontWeight: FontWeight.w400),
                    TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        'Kirim Ulang',
                        style: TextStyle(
                          color: Color.fromRGBO(76, 103, 147, 1),
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 190,),

                //Kembali masuk
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_back, size: 15, color: Color.fromRGBO(76, 103, 147, 1)),
                      MyTextButton(text: 'Kembali Masuk', textColor: const Color.fromRGBO(76, 103, 147, 1), onTap: (){
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignInPage())
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
  
}