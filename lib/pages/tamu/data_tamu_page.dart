import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';

import '../../components/my_text_icon_button.dart';
import 'detail_tamu_page.dart';
import 'input_data_tamu_page.dart';

class DataTamuPage extends StatefulWidget{
  const DataTamuPage({super.key});

  @override
  State<DataTamuPage> createState() => _DataTamuPage();
}

class _DataTamuPage extends State<DataTamuPage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
  List<Map> _kamars = [
    {
      'nama': 'wahyu ardiansyah',
      'email': 'wahyu@yahoo.com',
      'no_telp': '081222299999',
    },
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                MyText(text: 'Data Tamu', fontSize: 24, fontWeight: FontWeight.w600),
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
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                    ),
                    constraints: const BoxConstraints(maxHeight: 45)
                  ),
                ),
                const SizedBox(height: 14,),

                //Jumlah kamar + button  tambah kamar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyText(text: 'Jumlah Tamu : ', fontSize: 12, fontWeight: FontWeight.w600),
                        MyText(text: '0', fontSize: 12, fontWeight: FontWeight.w600)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyTextIconButton(
                          onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InputDataTamuPage()));
                        }, 
                        icon: const Icon(Icons.add, size: 15,color: Colors.white,), 
                        text: 'Tambah Tamu'
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 19),

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
      headingRowColor: const MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
      headingTextStyle: const TextStyle(color: Colors.white),
      border: const TableBorder(
        horizontalInside: BorderSide(color: Color.fromRGBO(76, 103, 147, 1)),
      ),
      horizontalMargin: 4
    ),
    ) ;
  }

  _creatColumns() {
    return [
      const DataColumn(label: Expanded(child: Text('Nama',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Email',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('No. Telp',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Action',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _kamars
    .map((kamar) => DataRow(cells: [
      DataCell(Center(child: Text(kamar['nama'].toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['email'].toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['no_telp'].toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 9),))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DetailTamuPage()));
          }, icon: const Icon(Icons.remove_red_eye, size: 15)),
          const SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: const Icon(Icons.delete, size: 15))
        ]
      )),
    ])
    ).toList();
  }
}




