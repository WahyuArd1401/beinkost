import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/components/my_text_icon_button.dart';
import 'package:beinkost/pages/kontrak/detail_kontrak.dart';
import 'package:beinkost/pages/kontrak/input_data_kontrak_page.dart';
import 'package:beinkost/pages/plan/reservasi_page.dart';
import 'package:flutter/material.dart';

class ManajemenPlanPage extends StatefulWidget{
  ManajemenPlanPage({super.key});

  @override
  State<ManajemenPlanPage> createState() => _ManajemenPlanPage();
}

class _ManajemenPlanPage extends State<ManajemenPlanPage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
  List<Map> _plans = [
    {
      'nama': 'Stephen Hawking',
      'kamar-lantai': '1 | 3',
      'kelas': '1',
      'harga' : 1000000,
    }, {
      'nama': 'Uvuuvewvwevv uvevuwuv osass',
      'kamar-lantai': '1 | 3',
      'kelas': '1',
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
                        IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle, size: 30,color: Color.fromRGBO(76, 103, 147, 1),)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 13),

                //Title page
                MyText(text: 'Manajemen Plan', fontSize: 24, fontWeight: FontWeight.w600),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ReservasiPage()));
                    }, 
                    icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                    text: 'Tambah Plan'
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
      const DataColumn(label: Expanded(child: Text('Actions',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _plans
    .map((plan) => DataRow(cells: [
      DataCell(ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 70),
        child: Center(
          child: Text(plan['nama'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))
      ),),
      DataCell(Center(child: Text(plan['kamar-lantai'].toString(),  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(plan['kelas'],  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text('Rp. ' + plan['harga'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKontrakPage()));
          }, icon: Icon(Icons.remove_red_eye, size: 15)),
          SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: Icon(Icons.delete, size: 15))
        ]
      )),
    ])
    ).toList();
  }
}




