import 'package:beinkost/components/my_card.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();

  const DashboardPage({super.key});

}

class _DashboardPageState extends State<DashboardPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 20, 27, 26),
            child: Column(
              children: [

                //Nama akun & Icon notif + account
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: 'Selamat datang, Ronaldo!', fontSize: 14, fontWeight: FontWeight.w400),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                        IconButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, 
                            MaterialPageRoute(builder: (context)=> LandingPage()));
                          }, 
                          icon: const Icon(Icons.account_circle, size: 30,color: Color.fromRGBO(76, 103, 147, 1),)),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),

                //Title page & Logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: 'IndeKos', fontSize: 24, fontWeight: FontWeight.bold),
                        MyText(text: 'Kelola kos jadi lebih ', fontSize: 15, fontWeight: FontWeight.w400),
                        MyText(text: 'simple', fontSize: 15, fontWeight: FontWeight.bold)
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Image(image: AssetImage('assets/images/logo-kost.jpg'), height: 44, width: 47,),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyCard(
                  icon: const FaIcon(FontAwesomeIcons.home, size: 50, color: Colors.white,), 
                  judul: 'Jumlah Kos', 
                  deskripsi: 'Jumlah kos yang anda kelola', 
                  jumlah: '5'
                ),
                MyCard(
                  icon: const FaIcon(FontAwesomeIcons.userTie, size: 50, color: Colors.white,), 
                  judul: 'Jumlah Karyawan', 
                  deskripsi: 'Jumlah karyawan anda', 
                  jumlah: '10'
                ),
                MyCard(
                  icon: const FaIcon(FontAwesomeIcons.userFriends, size: 50, color: Colors.white,), 
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