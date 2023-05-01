import 'package:beinkost/pages/third_reset_password_page.dart';
import 'package:flutter/material.dart';
import '../components/my_custom_button.dart';
import '../components/my_text_button.dart';
import 'login_page.dart';

class SecondResetPasswordPage extends StatelessWidget {
  SecondResetPasswordPage({super.key});

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
                  'Cek Email Kamu!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Text(
                  'link reset password telah dikirim ke',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'bein**@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 39),
                MyCustomButton(text: 'Reset Password', onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder:(context) => ThirdResetPasswordPage())
                  );
                }),
                Center(
                  child: Row(
                    children: [
                      const Text(
                        'Belum menerima email?'
                      ), 
                      TextButton(
                        onPressed: onPressed, 
                        child: const Text(
                          'Kirim Ulang',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      )
                    ],
                  ),
                ),
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