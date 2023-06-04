// ignore_for_file: unused_field, prefer_final_fields

import 'package:beinkost/pages/invoice/invoice_page.dart';
import 'package:flutter/material.dart';

import '../../components/my_custom_button.dart';
import '../../components/my_icon_button.dart';
import '../../components/my_text.dart';

class TambahInvoicePage extends StatefulWidget {
  @override
  State<TambahInvoicePage> createState() => _TambahInvoicePage();
  
}

class _TambahInvoicePage extends State<TambahInvoicePage> {
  List<Map> _invoices = [
    {
      'nama': 'Stephen Hawking',
      'kamar': '1',
      'lantai' : '3',
      'kelas': '1',
      'status' : true,
      'harga' : 1000000,
    }, {
      'nama': 'Uvuuvewvwevv uvevuwuv osass',
      'kamar': '1',
      'lantai' : '4',
      'kelas': '1',
      'status' : false,
      'harga' : 1000000,
    },
  ];
  
  String? namaTamuValue;
  String? lantaiValue;
  String? tipeKelasValue;
  
  final hargaController = TextEditingController();  

  final _formField = GlobalKey<FormState>();

  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formField,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(33, 30, 33, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Back button
                  MyIconButton(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InvoicePage()));
                    }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                  const SizedBox(height: 10),
          
                  //Title page
                  MyText(text: 'Invoice', fontSize: 24, fontWeight: FontWeight.w600),
                  const SizedBox(height: 5),
          
                  //Data Tamu
                  MyText(text: 'Data Tamu', fontSize: 12, fontWeight: FontWeight.w700),
                  const SizedBox(height: 9),
                  DropdownButtonFormField(
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
                      hintText: 'Cari Tamu',
                      hintStyle: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(value: 'Stewie Griffin',child: Text('Stewie Griffin')),
                      DropdownMenuItem(value: 'Charlie Brown',child: Text('Charlie Brown')),
                      DropdownMenuItem(value: 'Natassya Sandra',child: Text('Natassya Sandra')),
                    ], 
                    onChanged: (value){
                      setState(() {
                        value = namaTamuValue;
                      });
                    },
                    value: namaTamuValue,
                  ),
                  const SizedBox(height: 23),
          
                  //Pemesanan Kamar
                  MyText(text: 'Pemesanan Kamar', fontSize: 12, fontWeight: FontWeight.w700),
                  const SizedBox(height: 9,),
          
                  //Lantai
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Lantai', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: DropdownButtonFormField(
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
                            DropdownMenuItem(value: '1',child: Text('1')),
                            DropdownMenuItem(value: '2',child: Text('2')),
                            DropdownMenuItem(value: '3',child: Text('3')),
                          ], 
                          onChanged: (value){
                            setState(() {
                              value = lantaiValue;
                            });
                          },
                          value: lantaiValue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Nomor Kamar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Nomor Kamar', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: DropdownButtonFormField(
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
                            DropdownMenuItem(value: '1',child: Text('1')),
                            DropdownMenuItem(value: '2',child: Text('2')),
                            DropdownMenuItem(value: '3',child: Text('3')),
                            DropdownMenuItem(value: '4',child: Text('4')),
                            DropdownMenuItem(value: '5',child: Text('5')),
                            DropdownMenuItem(value: '6',child: Text('6')),
                          ], 
                          onChanged: (value){
                            setState(() {
                              value = lantaiValue;
                            });
                          },
                          value: lantaiValue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Tipe Kelas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Tipe Kelas', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: DropdownButtonFormField(
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
                            DropdownMenuItem(value: '1',child: Text('1')),
                            DropdownMenuItem(value: '2',child: Text('2')),
                            DropdownMenuItem(value: '3',child: Text('3')),
                          ], 
                          onChanged: (value){
                            setState(() {
                              value = tipeKelasValue;
                            });
                          },
                          value: tipeKelasValue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Harga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Harga', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 23,),
          
                  //Pemesanan Kamar
                  MyText(text: 'Pembayaran', fontSize: 12, fontWeight: FontWeight.w700),
                  const SizedBox(height: 9,),
          
                  //Nomor Referensi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Nomor Referensi', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Due Date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Due Date', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Date Paid
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Date Paid', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Status', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Status', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Check in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Check In', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9,),
          
                  //Check out
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Check Out', fontSize: 12, fontWeight: FontWeight.w400),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: 190, 
                        child: TextFormField(
                          controller: hargaController,
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
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Enter value";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 53,),
          
                  MyCustomButton(
                          text: 'Simpan', 
                          onTap: (){
                            if(_formField.currentState!.validate()){
                              
                            }
                          }
                        ),
                        const SizedBox(height: 52),
                ],
              ),
            ),
          ),
        ),
      ),
    );  
  }
}