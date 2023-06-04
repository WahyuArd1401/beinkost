import 'package:beinkost/pages/invoice/invoice_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/my_icon_button.dart';
import '../../components/my_text.dart';

class StatusInvoicePage extends StatefulWidget {
  State<StatusInvoicePage> createState() => _StatusInvoicePage();
}

class _StatusInvoicePage extends State<StatusInvoicePage> {
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                const SizedBox(height: 27),

                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromRGBO(76, 103, 147, 1),
                        width: 2
                      )
                    ),
                    child: Center(child: FaIcon(FontAwesomeIcons.fileContract, color: Color.fromRGBO(76, 103, 147, 1),)),
                  ),
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyText(text: 'Nomor Referensi : ', fontSize: 12, fontWeight: FontWeight.w500),
                        MyText(text: '#2465712980', fontSize: 12, fontWeight: FontWeight.w700),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.green
                        ),
                      ),
                      child: Text(
                        'Lunas',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.green
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    MyText(text: 'Nama Tamu : ', fontSize: 12, fontWeight: FontWeight.w500),
                    MyText(text: 'Stewie Griffin', fontSize: 12, fontWeight: FontWeight.w700),
                  ],
                ),
                SizedBox(height: 13,),

                SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1.5,
                        color: Color.fromRGBO(76, 103, 147, 1)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Nama Kos ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': Kos Permata', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Kamar ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': 1', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Lantai ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': 3', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Kelas ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': 3', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Check In ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': 22 Mei 2022', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: MyText(text: 'Check Out ', fontSize: 12, fontWeight: FontWeight.w500)
                            ),
                            MyText(text: ': 23 Juni 2022', fontSize: 12, fontWeight: FontWeight.w700)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromRGBO(76, 103, 147, 1)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Total Pemesanan', fontSize: 12, fontWeight: FontWeight.w400),
                      MyText(text: 'Rp. 700.000', fontSize: 12, fontWeight: FontWeight.bold)
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