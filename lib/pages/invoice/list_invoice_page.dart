import 'package:beinkost/pages/invoice/invoice_page.dart';
import 'package:beinkost/pages/kontrak/manajemen_kontrak_page.dart';
import 'package:beinkost/pages/plan/manajemen_plan_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/my_white_text.dart';

class ListInvoicePage extends StatefulWidget {
  const ListInvoicePage({super.key});

  @override
  State<ListInvoicePage> createState() => _ListInvoicePage();
}

class _ListInvoicePage extends State<ListInvoicePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 20, 27, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Icon Home & Setting
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle, size: 30,color: Color.fromRGBO(76, 103, 147, 1),)),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 13),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(76, 103, 147, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManajemenKontrakPage()));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.clipboardCheck, size: 30, color: Colors.white)),
                          MyWhiteText(text: "Manajemen Kontrak", fontSize: 15, fontWeight: FontWeight.w700)
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManajemenPlanPage()));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.clipboardList, size: 30,  color: Colors.white)
                          ),
                          MyWhiteText(text: "Manajemen Plan", fontSize: 15, fontWeight: FontWeight.w700)
                        ],
                      ),Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InvoicePage()));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.fileInvoice, size: 30,  color: Colors.white)
                          ),
                          MyWhiteText(text: "Invoice", fontSize: 15, fontWeight: FontWeight.w700)
                        ],
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}