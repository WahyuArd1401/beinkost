import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_textfield.dart';
import 'package:beinkost/pages/first_reset_password_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('BeinKost Login'),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
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
                  )
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
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
                    TextInputType: TextInputType.emailAddress,
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
                    TextInputType: TextInputType.text,
                  ),
                ]
              ),
            ),
            const SizedBox(height: 6),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
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
            ),
            const SizedBox(height: 210),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(children: [
                MyCustomButton(text: 'Masuk', onTap: signUserIn)
              ]),
            ),
          ],
        ),
        ),
      ),
    );
  }
}