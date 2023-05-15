import 'package:beinkost/components/my_card.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 27,),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    children: const [
                      Text(
                        'Selamat datang, Ronaldo!',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 64),
                      Icon(Icons.account_box, size: 22),
                      Icon(Icons.notifications_active, size: 22),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: 'IndeKos', fontSize: 24, fontWeight: FontWeight.bold),
                        MyText(text: 'Kelola kos jadi lebih \nsimple', fontSize: 15, fontWeight: FontWeight.w400),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Icon(Icons.account_box, size: 57),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyCard(
                  icon: const Icon(Icons.home, size: 50), 
                  judul: 'Jumlah Kos', 
                  deskripsi: 'Jumlah kos yang anda kelola', 
                  jumlah: '5'
                ),
                MyCard(
                  icon: const Icon(Icons.people, size: 50,), 
                  judul: 'Jumlah Karyawan', 
                  deskripsi: 'Jumlah karyawan anda', 
                  jumlah: '10'
                ),
                MyCard(
                  icon: const Icon(Icons.people, size: 50,), 
                  judul: 'Jumlah Tamu', 
                  deskripsi: 'Jumlah Tamu anda', 
                  jumlah: '100'
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}