import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/components/my_text_icon_button.dart';
import 'package:beinkost/pages/fasilitas/input_master_fasilitas_page.dart';
import 'package:beinkost/pages/kontrak/detail_kontrak.dart';
import 'package:beinkost/pages/kontrak/input_data_kontrak_page.dart';
import 'package:flutter/material.dart';

class MasterFasilitasPage extends StatefulWidget{
  MasterFasilitasPage({super.key});

  @override
  State<MasterFasilitasPage> createState() => _MasterFasilitasPage();
}

class _MasterFasilitasPage extends State<MasterFasilitasPage> {
  //Data Dummy Kamar
  // ignore: prefer_final_fields, unused_field
  List<Map> _kamars = [
    {
      'kategori-fasilitas': 'Publik',
      'fasilitas': 'Parkiran Motor',
      'jumlah': '1',
    },{
      'kategori-fasilitas': 'Publik',
      'fasilitas': 'Wifi',
      'jumlah': '1',
    },
    {
      'kategori-fasilitas': 'Private',
      'fasilitas': 'Kasur',
      'jumlah': '6',
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
                MyText(text: 'Kos Permata | Data kamar', fontSize: 23, fontWeight: FontWeight.w600),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InputMasterFasilitasPage()));
                    }, 
                    icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                    text: 'Tambah Fasilitas'
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
      const DataColumn(label: Expanded(child: Text('Kategori Fasilitas',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Fasilitas',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center,softWrap: true,))),
      const DataColumn(label: Expanded(child: Text('Jumlah',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
      const DataColumn(label: Expanded(child: Text('Action',style: TextStyle(fontFamily: 'Quicksand', fontSize: 11,),textAlign: TextAlign.center))),
    ];
  }

  
  _createRows() {
    return _kamars
    .map((kamar) => DataRow(cells: [
      DataCell(Center(child: Text(kamar['kategori-fasilitas'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['fasilitas'].toString(),  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Center(child: Text(kamar['jumlah'],  textAlign: TextAlign.center, style: TextStyle(fontSize: 9),))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MasterFasilitasPage()));
          }, icon: Icon(Icons.remove_red_eye, size: 15)),
          SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: Icon(Icons.more_vert, size: 15))
        ]
      )),
    ])
    ).toList();
  }
}




