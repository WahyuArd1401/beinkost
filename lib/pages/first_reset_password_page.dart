import 'package:beinkost/components/my_text_button.dart';
import 'package:beinkost/pages/login_page.dart';
import 'package:beinkost/pages/second_reset_password_page.dart';
import 'package:flutter/material.dart';
import '../components/my_custom_button.dart';

class FirstResetPasswordPage extends StatelessWidget {
  FirstResetPasswordPage({super.key});

  void resetPassword() {
    return ;
  }

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
                  'Lupa Password?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Text(
                  'tenang jangan panik',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 47),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Email',
                  ),
                ),
                const SizedBox(height: 80),
                MyCustomButton(text: 'Reset Password', onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondResetPasswordPage())
                  );
                }),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 50),
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