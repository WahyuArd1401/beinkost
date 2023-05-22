import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {

  State<InvoicePage> createState() => _InvoicePage();
  
}

class _InvoicePage extends State<InvoicePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text('Halaman Invoice'),),
    );
  }
}