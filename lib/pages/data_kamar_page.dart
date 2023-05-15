import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';

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
    }
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.fromLTRB(24, 50, 24, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Icon close, account, setting
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyIconButton(
                      onTap: (){}, 
                      icon: const Icon(Icons.close, size: 25)
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.account_box, size: 25,)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.settings, size: 25)),
                      ],
                    )
                  ],
                ),

                //Title page
                MyText(text: 'Data Kamar', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10),

                //Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'pencarian',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear), 
                      onPressed: () {  },
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: (){},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),

                //Jumlah kamar + button  tambah kamar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyText(text: 'Jumlah kos : ', fontSize: 12, fontWeight: FontWeight.w600),
                        MyText(text: '0', fontSize: 12, fontWeight: FontWeight.w600)
                      ],
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DataKamarPage()));
                      }, 
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white12)
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.add, size: 15),
                          MyText(text: 'Tambah Kamar', fontSize: 12, fontWeight: FontWeight.w400)
                        ],
                      ),
                    ),
                  ],
                ),

                //Nama Kos
                MyText(text: 'Kos Permata', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10,),

                //Table
                // Table(
                //   border: TableBorder(
                //     borderRadius: BorderRadius.circular(12)
                //   ),
                  
                //   columnWidths: const <int, TableColumnWidth>{
                //     0: IntrinsicColumnWidth(),
                //     1: FlexColumnWidth(1),
                //     2: FixedColumnWidth(100),
                //   },
                //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                //   children: <TableRow> [
                //     TableRow(
                //       // decoration: BoxDecoration(
                //       //   color: Colors.grey
                //       // ),
                //       children: [
                //         Container(child: Text('Nomor')),
                //         // TableCell(child: Text('Nomor kamar')),
                //         TableCell(child: Text('Lantai')),
                //         TableCell(child: Text('Tipe kamar')),
                //         TableCell(child: Text('Actions')),
                //       ]
                //     ),
                //     const TableRow(
                //       children: <Widget>[
                //         TableCell(child: Text('Nomor kamar')),
                //         TableCell(child: Text('Lantai')),
                //         TableCell(child: Text('Tipe kamar')),
                //         TableCell(child: Text('Actions')),
                //       ]
                //     ),
                //   ],
                // ),

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
    return DataTable(
      columns: _creatColumns(), 
      rows: _createRows(),
      columnSpacing: 20,
      
    );
  }

  _creatColumns() {
    return [
      DataColumn(label: Text('Nomor Kamar')),
      DataColumn(label: Text('Lantai')),
      DataColumn(label: Text('Kategori')),
      DataColumn(label: Text('Action')),
    ];
  }

  
  _createRows() {
    return _kamars
    .map((kamar) => DataRow(cells: [
      DataCell(Center(child: Text(kamar['nomor kamar'].toString()))),
      DataCell(Center(child: Text(kamar['lantai'].toString()))),
      DataCell(Center(child: Text(kamar['tipe kamar']))),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIconButton(onTap: (){}, icon: Icon(Icons.remove_red_eye, size: 10)),
          SizedBox(width: 3),
          MyIconButton(onTap: (){}, icon: Icon(Icons.more_vert, size: 10))
        ]
      )),
    ])
    ).toList();
  }
}




