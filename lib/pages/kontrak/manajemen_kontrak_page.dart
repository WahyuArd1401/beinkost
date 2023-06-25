import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/components/my_text_icon_button.dart';
import 'package:beinkost/pages/kontrak/detail_kontrak.dart';
import 'package:beinkost/pages/kontrak/input_data_kontrak_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';

class ManajemenKontrakPage extends StatefulWidget{
  ManajemenKontrakPage({super.key});

  @override
  State<ManajemenKontrakPage> createState() => _ManajemenKontrakPage();
}

class _ManajemenKontrakPage extends State<ManajemenKontrakPage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
  List<Map> _kamars = [
    {
      'posisi': 'Tukang kebun',
      'tipe-kontrak': 'Tetap',
      'kelas': '1',
      'gaji' : 1000000,
      'periode-kontrak' : 'permanen',
      'tanggal-kontrak' : '15/08/2022'
    },{
      'posisi': 'Karyawan',
      'tipe-kontrak': 'Tetap',
      'kelas': '2',
      'gaji' : 1000000,
      'periode-kontrak' : 'permanen',
      'tanggal-kontrak' : '15/08/2022'
    },
    {
      'posisi': 'Karyawan Tanpa Nama',
      'tipe-kontrak': 'Gatau Tetap atau Gimana',
      'kelas': '2',
      'gaji' : 1000000,
      'periode-kontrak' : 'permanen',
      'tanggal-kontrak' : '15/08/2022'
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
                        IconButton(
                          onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LandingPage()));
                            }, 
                          icon: const Icon(Icons.account_circle, size: 30,color: Color.fromRGBO(76, 103, 147, 1),)
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 13),

                //Title page
                MyText(text: 'Manajemen Kontrak', fontSize: 24, fontWeight: FontWeight.w600),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InputDataKontrakPage()));
                    }, 
                    icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                    text: 'Tambah Kontrak'
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
      width: 292,
      child: DataTable(
      columns: _creatColumns(), 
      rows: _createRows(),
      columnSpacing: 10,
      headingRowColor: MaterialStatePropertyAll(Color.fromRGBO(76, 103, 147, 1)),
      headingTextStyle: TextStyle(color: Colors.white),
      border: TableBorder(
        horizontalInside: BorderSide(color: Color.fromRGBO(76, 103, 147, 1)),
      ),
      horizontalMargin: 7
    ),
    ) ;
  }

  _creatColumns() {
    return [
      const DataColumn(label: Expanded(child: Text('Posisi',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Tipe Kontrak',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center,softWrap: true,))),
      const DataColumn(label: Expanded(child: Text('Kelas',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Gaji',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Action',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _kamars
    .map((kamar) => DataRow(cells: [
      DataCell(Center(child: Text(kamar['posisi'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['tipe-kontrak'].toString(),  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['kelas'],  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text('Rp. ' + kamar['gaji'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
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




