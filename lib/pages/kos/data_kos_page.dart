import 'package:beinkost/components/my_data_kos_card.dart';
import 'package:beinkost/pages/dashboard_page.dart';
import 'package:beinkost/pages/kos/detail_kos_page.dart';
import 'package:beinkost/pages/kos/input_data_kos_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';

import '../../components/my_text.dart';
import '../../components/my_text_icon_button.dart';
import '../kontrak/detail_kontrak.dart';

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
                SizedBox(height: 13),

                //Title
                MyText(text: 'Data Kos', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 10),

                //Search Bar
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyTextIconButton(
                          onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InputDataKosPage()));
                        }, 
                        icon: Icon(Icons.add, size: 15,color: Colors.white,), 
                        text: 'Tambah Kos'
                        ),
                      ],
                    ),
                  ],
                ),

                //Data Kos Card
                MyDataKosCard(
                  onTap: () => {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKosPage()))
                  },
                  urlImage: 'assets/images/kos-permata.jpg', 
                  namaKos: 'Kos Permata', 
                  alamatKos: 'Jln. Kaki Tiga No.10', 
                  genderPenghuniKos: 'Laki-laki', 
                  iconGenderPenghuni: const Icon(Icons.male, size: 15, color: Colors.white,),
                ),
                MyDataKosCard(
                  onTap: () => {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKosPage()))
                  },
                  urlImage: 'assets/images/kos-perdana.jpg', 
                  namaKos: 'Kos Indahyani', 
                  alamatKos: 'Jln. Kaki Lima No.10', 
                  genderPenghuniKos: 'Perempuan', 
                  iconGenderPenghuni: const Icon(Icons.female, size: 15, color: Colors.white,),
                ),
              ],
            ),
          )
        )
      ),
    );
  } 
  
}