// ignore_for_file: body_might_complete_normally_nullable

import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/components/my_text_button.dart';
import 'package:beinkost/pages/reset%20password%20page/second_reset_password_page.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:flutter/material.dart';
import '../../components/my_custom_button.dart';

class FirstResetPasswordPage extends StatelessWidget {
  FirstResetPasswordPage({super.key});

  final emailController = TextEditingController();
  final _formField = GlobalKey<FormState>();

  void resetPassword() {
    return ;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 43, 33, 10),
            child: Form(
              key: _formField,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //Logo
                  const Image(image: AssetImage('assets/images/bangkit.jpg'), width: 87, height: 87,),
                  const SizedBox(height: 138),

                  //Form
                  MyText(text: 'Lupa password?', fontSize: 24, fontWeight: FontWeight.w600),
                  MyText(text: 'Tenang, jangan panik', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 47),
                  TextFormField(
                    controller: emailController,

                    decoration: const InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(76, 103, 147, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.all(8),
                    ),
                    validator: (value) {
                      bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                      if(value.isEmpty){
                        return "Enter email";
                      } else if(!emailValid){
                        return "Enter valid email";
                      }
                    },
                  ),
                  const SizedBox(height: 80),

                  //Button Reset Password
                  MyCustomButton(
                    text: 'Reset Password', 
                    onTap: (){
                      if(_formField.currentState!.validate()){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SecondResetPasswordPage()));
                      }
                  }),
                  const SizedBox(height: 120,),

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
      ),
    );
  }
}