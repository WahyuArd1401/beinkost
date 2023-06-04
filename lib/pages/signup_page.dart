// ignore_for_file: prefer_const_constructors_in_immutables, body_might_complete_normally_nullable, avoid_print

import 'package:beinkost/pages/sign_in.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:beinkost/components/my_custom_button.dart';
import '../components/my_text.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUpPage extends StatefulWidget{
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final _formField = GlobalKey<FormState>();

  final namaController = TextEditingController();
  final jenisKelaminController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final tempatLahirController = TextEditingController();
  final agamaController = TextEditingController();
  final alamatController = TextEditingController();
  final nomorTeleponController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //DropDown
  String? dropdownProvinceValue;
  String? dropdownValue;
  //Fetch API ke Dropdown
  Future<List<String>> getProvince() async {
    String url = "https://rizalmaulana32.github.io/api-wilayah-indonesia/api/provinces.json";
    http.Response respone = await http.get(Uri.parse(url));
    if(respone.statusCode == 200){
      List<String> items = [];
      var jsonData = json.decode(respone.body) as List;
      for (var element in jsonData){
        items.add(element['name']);
      }
      return items;
    } else {
      throw respone.statusCode;
    }
  }

  bool visible = true;
  bool confirmVisible = true;

  //PopUp Form Login Terisi dan Acc
  showSignUpSuccess(){
    showDialog(
      // barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(8),
          content: Container(
            width: 100,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.check, size: 40, color: Colors.green,),
                const SizedBox(height: 10,),
                const Text('Registrasi Anda Berhasil!'),
                const SizedBox(height: 30,),
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context)=> SignInPage()));
                  }, 
                  child: const Text('Lanjut Login')
                ),
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
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 43, 33, 20),
            child: Form(
              key: _formField,
              child: Column(
                children: [

                  //Logo & Welcome
                  Center(
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/images/logo-kost.jpg'), width: 60, height: 60,),
                        const SizedBox(height: 22,),
                        MyText(text: 'Masuk', fontSize: 16, fontWeight: FontWeight.w600),
                        MyText(text: 'selamat datang di beinsoft', fontSize: 12, fontWeight: FontWeight.w400),
                        const SizedBox(height: 22,),
                      ],
                    ),
                  ),

                  //Form
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //nama
                      MyText(text: 'Nama', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: namaController,
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
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Jenis Kelamin
                      MyText(text: 'Jenis Kelamin', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller:jenisKelaminController,
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
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Tanggal Lahir
                      MyText(text: 'Tanggal Lahir', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      DateTimeFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                          ),
                          suffixIcon: const Icon(Icons.event_note, color: Color.fromRGBO(76, 103, 147, 1),),
                          contentPadding: const EdgeInsets.all(10)
                        ),
                        mode: DateTimeFieldPickerMode.date,
                        autovalidateMode: AutovalidateMode.always,
                        // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                        validator: (e){
                          if((e?.day ?? 0) == 1){
                            return 'Please not the first day';
                          }
                        }
                      ),
                      const SizedBox(height: 4),

                      //Tempat Lahir
                      MyText(text: 'Tempat Lahir', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: tempatLahirController,
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
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Agama
                      MyText(text: 'Agama', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: agamaController,
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
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Alamat
                      MyText(text: 'Alamat', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: alamatController,
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
                          if(value!.isEmpty){
                            return "This field required";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Provinsi
                      MyText(text: 'Provinsi', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      FutureBuilder<List<String>>(
                        future: getProvince(),
                        builder: (context, snapshot){
                          if (snapshot.hasData) {
                            var data = snapshot.data!;
                            return DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: '',
                              ),
                              isExpanded: true,
                              // Initial Value
                              value: dropdownProvinceValue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: data.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownProvinceValue = newValue!;
                                });
                              },
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        }
                      ),
                      const SizedBox(height: 4),

                      //Kota/Kab
                      MyText(text: 'Kota / Kabupaten', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      DropdownButtonFormField<String>(
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
                        isExpanded: true,
                        items: const [
                          DropdownMenuItem<String>(value: 'Malang',child: Text('Malang')),
                          DropdownMenuItem<String>(value: 'Semarang',child: Text('Semarang')),
                          DropdownMenuItem<String>(value: 'Bandung' ,child: Text('Bandung')),
                        ], 
                        onChanged: (newValue){
                          setState(() {
                            newValue = dropdownValue;
                          });
                        },
                        value: dropdownValue,
                        // validator: (value){
                        //   if(value!.isEmpty){
                        //     return 'This field required';
                        //   }
                        // },
                      ),
                      const SizedBox(height: 4),

                      //Nomor Telepon
                      MyText(text: 'Nomor Telepon', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: nomorTeleponController,
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
                          bool validNumber = RegExp(r'(^(?:[+0]9)?[0-9]{11,13}$)').hasMatch(value!);
                          if(value.isEmpty){
                            return "This field required";
                          } 
                          else if (!validNumber){
                            return "Enter valid phone number";
                          }
                        },
                      ),
                      const SizedBox(height: 4),

                      //Email
                      MyText(text: 'Email', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
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
                      const SizedBox(height: 4),

                      //Input Password
                      MyText(text: 'Password', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
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
                      const SizedBox(height: 4),

                      //Konfirmasi Password
                      MyText(text: 'Konfirmasi Password', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(height: 2),
                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: confirmVisible,
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
                                confirmVisible = !confirmVisible;
                              });
                            },
                            child: Icon(
                              confirmVisible ? Icons.visibility : Icons.visibility_off, 
                              color: const Color.fromRGBO(76, 103, 147, 1)
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter password";
                          } else if(confirmPasswordController.text.length < 8){
                            return "Password length should more than 8 characters";
                          } else if(passwordController.value != confirmPasswordController.value){
                            return "Password not match";
                          }
                        },
                      ),
                      const SizedBox(height: 52),

                      //Tombol Daftar
                      MyCustomButton(
                        text: 'Daftar', 
                        onTap: (){
                          if(_formField.currentState!.validate()){
                            showSignUpSuccess();
                          }
                        }
                      ),
                      const SizedBox(height: 52),
                    ],
                  ),
                ],
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}