import 'package:beinkost/pages/data_kamar_page.dart';
import 'package:beinkost/pages/data_kos_page.dart';
import 'package:beinkost/pages/detail_kos_page.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:beinkost/pages/tambah_fasilitas_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(    
      home: DataKamarPage(),
    );
  }
}

