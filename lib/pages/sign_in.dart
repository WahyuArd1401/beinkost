// ignore_for_file: prefer_const_constructors_in_immutables, body_might_complete_normally_nullable, avoid_print, unrelated_type_equality_checks, non_constant_identifier_names

import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:beinkost/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:beinkost/pages/reset%20password%20page/first_reset_password_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});
  
  @override
  State<SignInPage> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {

  //Rencananya buat login
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formField = GlobalKey<FormState>();

  var emailUser  = 'wahyuardiansyah764@gmail.com';
  var passUser = 'wahyu123';
  bool visible = true;
  
  bool  _checkbox = false;

  signInSuccess(){
      showDialog(
        context: context, 
        builder:  (context){
          return AlertDialog(
            content: Container(
              height: 70,
              child: Column(
                children: [
                  Text('Login Berhasil'),
                  TextButton(
                    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LandingPage();}));}, 
                    child: Text('Lanjut ke Dashboard'))
                ],
              ),
            ),
          );
        }
      );
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 43, 33, 20),
            child: Form(
              key: _formField,
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        // Icon(Icons.add, size: 60),
                        const Image(image: AssetImage('assets/images/logo-kost.jpg'), width: 60, height: 60,),
                        const SizedBox(height: 35,),
                        MyText(text: 'Masuk', fontSize: 16, fontWeight: FontWeight.w600),
                        MyText(text: 'selamat datang di beinsoft', fontSize: 12, fontWeight: FontWeight.w400),
                        const SizedBox(height: 120,),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      //Input Email
                      MyText(text: 'Email', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 4),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          contentPadding: const EdgeInsets.all(10)
                        ),
                        validator: (value){
                          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                          if(value.isEmpty){
                            return "Enter email";
                          } else if(!emailValid){
                            return "Enter valid email";
                          }
                        },
                      ),
                      const SizedBox(height: 6,),

                      //Input Password
                      MyText(text: 'Password', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 4),
                      TextFormField(
                        controller: passwordController,
                        obscureText: visible,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
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
                          contentPadding: const EdgeInsets.all(10),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter password";
                          } else if(passwordController.text.length < 8){
                            return "Password length should more than 8 characters";
                          }
                        },
                      ),
                    ],
                  ),

                  //Ingat saya & lupa password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: const Color.fromRGBO(76, 103, 147, 1),
                            side: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1)),
                            value: _checkbox,
                            onChanged: (value) {
                              setState(() {
                                _checkbox = !_checkbox;
                              });
                            },
                          ),
                          MyText(text: 'ingat saya', fontSize: 12, fontWeight: FontWeight.w400),
                        ],
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FirstResetPasswordPage()));
                        },
                        child: MyText(text: 'lupa password?', fontSize: 12, fontWeight: FontWeight.w400)
                      ),
                    ],
                  ),
                  const SizedBox(height: 100,),

                  //Button Masuk
                  MyCustomButton(
                    text: 'Masuk', 
                    onTap: (){
                      if(_formField.currentState!.validate()){
                        if(emailController.text == emailUser && passwordController.text == passUser){
                          signInSuccess();
                        } else {
                          showDialog(
                            context: context, 
                            builder: (context){
                              return AlertDialog(content: Text('Login Gagal'),);
                            }
                          );
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 10,),
                  MyCustomButton(
                    text: 'Daftar', 
                    onTap: (){
                      Navigator.pushReplacement(context, 
                      MaterialPageRoute(builder: (context)=> SignUpPage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

