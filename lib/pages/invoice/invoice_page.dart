import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/components/my_text_icon_button.dart';
import 'package:beinkost/pages/invoice/status_invoice_page.dart';
import 'package:beinkost/pages/invoice/tambah_invoice_page.dart';
import 'package:beinkost/pages/kontrak/detail_kontrak.dart';
import 'package:beinkost/pages/kontrak/input_data_kontrak_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:beinkost/pages/plan/reservasi_page.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget{
  InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePage();
}

class _InvoicePage extends State<InvoicePage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
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

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(33, 30, 33, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Icon notif and account
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_on, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                        IconButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                        }, icon: const Icon(Icons.account_circle, size: 30,color: Color.fromRGBO(76, 103, 147, 1),)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 13),

                //Title page
                MyText(text: 'Inovice', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10),

                //Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'pencarian',
                    hintStyle: TextStyle(
                      fontSize: 14,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear,size: 15,), 
                      onPressed: () {  },
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search, size: 15,),
                      onPressed: (){},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    constraints: BoxConstraints(maxHeight: 45)
                  ),
                ),
                SizedBox(height: 10,),

                //button  tambah Kontrak
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyTextIconButton(
                      onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> TambahInvoicePage()));
                    }, 
                    icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                    text: 'Tambah Invoice'
                    ),
                  ],
                ),
                SizedBox(height: 28,),

                //Table with function
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: _createDataTable(),
                )
                
              ],
            ),
          ),
        )
      ),
    );
  }

  _createDataTable() {
    return Container(
      child: DataTable(
      columns: _creatColumns(), 
      rows: _createRows(),
      columnSpacing: 10,
      headingRowColor: MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
      headingTextStyle: TextStyle(color: Colors.white),
      border: TableBorder(
        horizontalInside: BorderSide(color: Color.fromRGBO(76, 103, 147, 1)),
      ),
      horizontalMargin: 12
    ),
    ) ;
  }

  _creatColumns() {
    return [
      const DataColumn(label: Expanded(child: Text('Nama',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Kamar | Lantai',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center,))),
      const DataColumn(label: Expanded(child: Text('Kelas',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Harga',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Status',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Actions',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _invoices
    .map((invoice) => DataRow(cells: [
      DataCell(ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 60,),
        child: Center(
          child: Text(invoice['nama'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))
      ),),
      DataCell(Center(child: Text(invoice['kamar'].toString() + ' | ' + invoice['lantai'] ,  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(invoice['kelas'],  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text('Rp. ' + invoice['harga'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(invoice['status'].toString(),  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> StatusInvoicePage()));
          }, icon: Icon(Icons.remove_red_eye, size: 15)),
          SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: Icon(Icons.delete, size: 15))
        ]
      )),
    ])
    ).toList();
  }
}




