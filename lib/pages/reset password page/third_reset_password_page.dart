// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:flutter/material.dart';
import '../../components/my_custom_button.dart';
import '../../components/my_text_button.dart';
import 'fourth_reset_password_page.dart';

class ThirdResetPasswordPage extends StatefulWidget {
  ThirdResetPasswordPage({super.key});

  @override
  State<ThirdResetPasswordPage> createState()=> _ThirdResetPasswordPage();
}

class _ThirdResetPasswordPage extends State<ThirdResetPasswordPage> {

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool visible = true;
  bool confirmVisible = true;
  final _formField = GlobalKey<FormState>();

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
                  const Image(image: AssetImage('assets/images/logo-kost.jpg'), width: 87, height: 87,),
                  const SizedBox(height: 138),

                  //Text
                  MyText(text: 'Atur Kata Sandi Baru!', fontSize: 24, fontWeight: FontWeight.w600),
                  MyText(text: 'Password harus berupa kombinasi Huruf, Angka dan Simbol', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 32),

                  //Form Password
                  TextFormField(
                    controller: passwordController,
                    obscureText: visible,
                    decoration: InputDecoration(
                      hintText: 'Password Baru',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(76, 103, 147, 1),
                        fontSize: 12,
                        fontFamily: 'Quicksand'
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        child: Icon(
                          visible ? Icons.visibility : Icons.visibility_off, 
                          color: const Color.fromRGBO(76, 103, 147, 1)
                        ),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter password";
                      } else if(passwordController.text.length < 8){
                        return "Password length should more than 8 characters";
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  
                  //Form Konfirmasi Password
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: confirmVisible,
                    decoration: InputDecoration(
                      hintText: 'Password Baru',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(76, 103, 147, 1),
                        fontSize: 12,
                        fontFamily: 'Quicksand'
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            confirmVisible = !confirmVisible;
                          });
                        },
                        child: Icon(
                          confirmVisible ? Icons.visibility : Icons.visibility_off, 
                          color: const Color.fromRGBO(76, 103, 147, 1)
                        ),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter password";
                      } else if(passwordController.text.length < 8){
                        return "Password length should more than 8 characters";
                      } else if(passwordController.value != confirmPasswordController.value){
                        return "Password not match";
                      }
                    },
                  ),
                  const SizedBox(height: 42),

                  //Button Reset Password
                  MyCustomButton(text: 'Reset Password', onTap: (){
                    if(_formField.currentState!.validate()){
                      Navigator.pushReplacement(context, 
                        MaterialPageRoute(builder: (context) => FourthResetPasswordPage())
                      );
                    }
                  }),
                  SizedBox(height: 75),

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
          )
        ),
      ),
    );
  }
  
}