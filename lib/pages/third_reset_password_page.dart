import 'package:beinkost/pages/fourth_reset_password_page.dart';
import 'package:flutter/material.dart';
import '../components/my_custom_button.dart';
import '../components/my_text_button.dart';
import 'login_page.dart';

class ThirdResetPasswordPage extends StatelessWidget {
  ThirdResetPasswordPage({super.key});

  void onPressed(){}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password Page'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.fromLTRB(33, 33, 33, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.add,size: 87,color: Colors.blue),
                const SizedBox(height: 138),
                const Text(
                  'Atur Kata Sandi Baru!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Text(
                  'Password harus berupa kombinasi Huruf, Angka dan Simbol',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 32),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password Baru'
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Minimal 8 karakter',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 46),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Konfirmasi Password Baru'
                  ),
                ),
                const SizedBox(height: 42),
                MyCustomButton(text: 'Reset Password', onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => FourthResetPasswordPage())
                  );
                }),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.fromLTRB(0, 200, 0, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_back, size: 15),
                      MyTextButton(text: 'Kembali Masuk', textColor: Colors.black, onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage())
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