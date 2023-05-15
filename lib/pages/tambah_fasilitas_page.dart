import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/detail_kos_page.dart';
import 'package:flutter/material.dart';

class TambahFasilitasPage extends StatefulWidget {
  TambahFasilitasPage({super.key});

  @override
  State<TambahFasilitasPage> createState() => _TambahFasilitasPage();
}

class _TambahFasilitasPage extends State<TambahFasilitasPage> {
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
                MyIconButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKosPage()));
                  }, 
                  icon: const Icon(Icons.close, size: 15,)
                ),
                const SizedBox(height: 10),
                MyText(text: 'Tambah Fasilitas Kos', fontSize: 24, fontWeight: FontWeight.w600),
                MyText(text: 'Kos Permata', fontSize: 24, fontWeight: FontWeight.w600),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: (){
                        
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      icon: const Icon(Icons.add, size: 15), 
                      label: const Text('Tambah Fasilitas')
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
  
}