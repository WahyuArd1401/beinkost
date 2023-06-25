import 'package:beinkost/pages/dashboard_page.dart';
import 'package:beinkost/pages/fasilitas/master_fasilitas_page.dart';
import 'package:beinkost/pages/invoice/invoice_page.dart';
import 'package:beinkost/pages/invoice/status_invoice_page.dart';
import 'package:beinkost/pages/kamar/data_kamar_page.dart';
import 'package:beinkost/pages/kamar/detail_kamar_page.dart';
import 'package:beinkost/pages/kamar/edit_data_kamar.dart';
import 'package:beinkost/pages/karyawan/detail_karyawan_page.dart';
import 'package:beinkost/pages/karyawan/input_data_karyawan_page.dart';
import 'package:beinkost/pages/kontrak/input_data_kontrak_page.dart';
import 'package:beinkost/pages/kontrak/manajemen_kontrak_page.dart';
import 'package:beinkost/pages/kos/data_kos_page.dart';
import 'package:beinkost/pages/kos/detail_kos_page.dart';
import 'package:beinkost/pages/kos/edit_data_kos_page.dart';
import 'package:beinkost/pages/kos/input_data_kos_page.dart';
import 'package:beinkost/pages/kos/tambah_fasilitas_kos_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:beinkost/pages/plan/manajemen_plan_page.dart';
import 'package:beinkost/pages/plan/reservasi_page.dart';
import 'package:beinkost/pages/sign_in.dart';
import 'package:beinkost/pages/signup_page.dart';
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
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

