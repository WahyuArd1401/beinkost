import 'package:beinkost/components/my_data_kos_card.dart';
import 'package:beinkost/pages/dashboard_page.dart';
import 'package:beinkost/pages/input_data_kos_page.dart';
import 'package:flutter/material.dart';

import '../components/my_text.dart';

class DataKosPage extends StatefulWidget {
  @override
  State<DataKosPage> createState() => _DataKosPage();
}

class _DataKosPage extends State<DataKosPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Icon Home & Setting
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardPage()));
                      }, 
                      icon: const Icon(Icons.home, size: 25,), 
                      splashColor: Colors.blue.shade100
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.settings, size: 25), splashColor: Colors.blue.shade100),
                  ],
                ),

                //Title
                MyText(text: 'Data Kos', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10),

                //Search Bar
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

                //Jumlah + Button tambah
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InputDataKosPage()));
                      }, 
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white12)
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.add, size: 15),
                          MyText(text: 'Tambah kos', fontSize: 12, fontWeight: FontWeight.w400)
                        ],
                      ),
                    ),
                  ],
                ),

                //Data Kos Card
                MyDataKosCard(
                  urlImage: 'assets/images/profil.jpg', 
                  namaKos: 'Kos Permata', 
                  alamatKos: 'Jln. Kaki Tiga No.10', 
                  genderPenghuniKos: 'Laki-laki', 
                  iconGenderPenghuni: const Icon(Icons.male, size: 15,),
                ),
                MyDataKosCard(
                  urlImage: 'assets/images/bangkit.jpg', 
                  namaKos: 'Kos Indahyani', 
                  alamatKos: 'Jln. Kaki Lima No.10', 
                  genderPenghuniKos: 'Perempuan', 
                  iconGenderPenghuni: const Icon(Icons.female, size: 15,),
                ),
              ],
            ),
          )
        )
      ),
    );
  } 
  
}