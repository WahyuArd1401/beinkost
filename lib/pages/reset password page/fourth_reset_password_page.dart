import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:flutter/material.dart';
import '../../components/my_custom_button.dart';
import '../../components/my_text_button.dart';

class FourthResetPasswordPage extends StatelessWidget {
  FourthResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 43, 33, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Logo
                const Image(image: AssetImage('assets/images/logo-kost.jpg'), width: 87, height: 87,),
                const SizedBox(height: 138),

                //Text
                MyText(text: 'Ubah Password', fontSize: 24, fontWeight: FontWeight.w600),
                MyText(text: 'Selamat, password anda telah berhasil diperbarui!', fontSize:12, fontWeight: FontWeight.w400),
                const SizedBox(height: 82),
                MyCustomButton(text: 'Lanjut Masuk', onTap: (){
                  Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context) => SignInPage())
                  );
                }),
                SizedBox(height: 210),
                
                //Kembali Masuk 
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