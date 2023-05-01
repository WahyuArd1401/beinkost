import 'package:beinkost/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../components/my_custom_button.dart';
import '../components/my_text_button.dart';

class FourthResetPasswordPage extends StatelessWidget {
  FourthResetPasswordPage({super.key});

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
                  'Ubah Password',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Text(
                  'Selamat, password anda telah berhasil diperbarui!',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 82),
                MyCustomButton(text: 'Lanjut Masuk', onTap: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
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