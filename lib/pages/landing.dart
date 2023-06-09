import 'package:beinkost/pages/dashboard_page.dart';
import 'package:beinkost/pages/fasilitas/master_fasilitas_page.dart';
import 'package:beinkost/pages/invoice/list_invoice_page.dart';
import 'package:beinkost/pages/karyawan/data_karyawan.dart';
import 'package:beinkost/pages/kos/data_kos_page.dart';
import 'package:beinkost/pages/tamu/data_tamu_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LandingPage({super.key,});
  
  @override
  State<LandingPage> createState() => _LandingPage();

}

class _LandingPage extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [DashboardPage(), DataKosPage(), DataKaryawanPage(), DataTamuPage(), MasterFasilitasPage(), ListInvoicePage()];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(76, 103, 147, 1),
        iconSize: 26,
        unselectedFontSize: 10,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (index)=>{
          setState(() => 
            _bottomNavCurrentIndex = index
          ),
        },
        currentIndex: _bottomNavCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: Colors.white,),
            activeIcon: Icon(Icons.dashboard, color:  Colors.blue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home, color: Colors.white,),
            activeIcon: FaIcon(FontAwesomeIcons.home, color:  Colors.blue,),
            label: 'Data Kos',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userTie, color: Colors.white,),
            activeIcon: FaIcon(FontAwesomeIcons.userTie, color:  Colors.blue,),
            label: 'Karyawan',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userFriends, color: Colors.white,),
            activeIcon: FaIcon(FontAwesomeIcons.userFriends , color:  Colors.blue,),
            label: 'Tamu',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.wifi, color: Colors.white,),
            activeIcon: FaIcon(FontAwesomeIcons.wifi , color:  Colors.blue,),
            label: 'Fasilitas',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar, color: Colors.white,),
            activeIcon: FaIcon(FontAwesomeIcons.fileInvoiceDollar, color:  Colors.blue,),
            label: 'Laporan',
          ),
        ],
      ),
      ) 
    );
  }
}