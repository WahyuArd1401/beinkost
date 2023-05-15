import 'package:flutter/material.dart';

import 'package:beinkost/pages/reset%20password%20page/first_reset_password_page.dart';
import 'package:beinkost/pages/signup_page.dart';
import 'dashboard_page.dart';

import '../components/my_custom_button.dart';
import '../components/my_textfield.dart';


class SignInPage extends StatefulWidget {
  SignInPage({super.key});
  
  @override
  State<SignInPage> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 43),
                      Icon(Icons.add, size: 50),
                      SizedBox(height: 35),
                      Text(
                        'MASUK',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        'selamat datang di BeinKost',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Email', 
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 2),
                    MyTextField(
                      // controller: usernameController, 
                      hintText: 'Masukkan email', 
                      obscureText: false,
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Password', 
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 2),
                    MyTextField(
                      // controller: usernameController, 
                      hintText: 'Masukkan password', 
                      obscureText: true,
                      inputType: TextInputType.text,
                    ),
                  ]
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ingat saya',
                    ),
                    // const SizedBox(width: 100),
                    TextButton(
                      onPressed:(){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => FirstResetPasswordPage())
                        );
                      }, 
                      child: const Text(
                        'lupa password?',
                        textAlign: TextAlign.right,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 210),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        MyCustomButton(text: 'Masuk', onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardPage()));
                        }),
                      ],
                    ),
                    Column(
                      children: [
                        MyCustomButton(
                          text: 'Daftar',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),  
      ),
    );
  }
}

