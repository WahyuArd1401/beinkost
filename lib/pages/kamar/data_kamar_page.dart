import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/kamar/detail_kamar_page.dart';
import 'package:beinkost/pages/kos/detail_kos_page.dart';
import 'package:beinkost/pages/kos/input_data_kos_page.dart';
import 'package:flutter/material.dart';

import '../../components/my_text_icon_button.dart';
import '../landing.dart';
import 'input_data_kamar.dart';

class DataKamarPage extends StatefulWidget{
  DataKamarPage({super.key});

  @override
  State<DataKamarPage> createState() => _DataKamarPage();
}

class _DataKamarPage extends State<DataKamarPage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
  List<Map> _kamars = [
    {
      'nomor kamar': 1,
      'lantai': 1,
      'tipe kamar': 'Kelas 3'
    },
    {
      'nomor kamar': 1,
      'lantai': 1,
      'tipe kamar': 'Kelas 3'
    },
    {
      'nomor kamar': 1,
      'lantai': 1,
      'tipe kamar': 'Kelas 3'
    },
    {
      'nomor kamar': 2,
      'lantai': 2,
      'tipe kamar': 'Kelas 1'
    }
  ];

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Back Button
                    MyIconButton(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKosPage()));
                      }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                    const SizedBox(height: 10),

                    //Notif & Account Icon
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
                  ],
                ),

                //Title page
                MyText(text: 'Data Kamar', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10),

                //Search Bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'pencarian',
                    hintStyle: const TextStyle(
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
                const SizedBox(height: 14,),

                //Jumlah kamar + button  tambah kamar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyText(text: 'Jumlah kamar : ', fontSize: 12, fontWeight: FontWeight.w600),
                        MyText(text: '0', fontSize: 12, fontWeight: FontWeight.w600)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyTextIconButton(
                          onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InputDataKamarPage()));
                        }, 
                        icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                        text: 'Tambah Kamar'
                        ),
                      ],
                    ),
                  ],
                ),

                //Nama Kos
                MyText(text: 'Kos Permata', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10,),

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
      width: 305,
      child: DataTable(
      columns: _creatColumns(), 
      rows: _createRows(),
      columnSpacing: 2,
      headingRowColor: MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
      headingTextStyle: TextStyle(color: Colors.white),
      border: TableBorder(
        horizontalInside: BorderSide(color: Color.fromRGBO(76, 103, 147, 1)),
      ),
      horizontalMargin: 4
    ),
    ) ;
  }

  _creatColumns() {
    return [
      DataColumn(label: Expanded(child: Text('Nomor Kamar',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      DataColumn(label: Expanded(child: Text('Lantai',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      DataColumn(label: Expanded(child: Text('Kategori',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      DataColumn(label: Expanded(child: Text('Action',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _kamars
    .map((kamar) => DataRow(cells: [
      DataCell(Center(child: Text(kamar['nomor kamar'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['lantai'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['tipe kamar'], textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DetailKamarPage()));
          }, icon: Icon(Icons.remove_red_eye, size: 15)),
          SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: Icon(Icons.more_vert, size: 15))
        ]
      )),
    ])
    ).toList();
  }
}




