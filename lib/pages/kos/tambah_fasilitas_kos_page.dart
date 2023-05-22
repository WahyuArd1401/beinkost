import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/pages/kos/detail_kos_page.dart';
import 'package:flutter/material.dart';
import '../../components/my_icon_button.dart';
import '../../components/my_text.dart';
import '../../components/my_white_text.dart';

class TambahFasilitasKosPage extends StatefulWidget {
  
  State<TambahFasilitasKosPage> createState() => _TambahFasilitasKosPage();
}

class _TambahFasilitasKosPage extends State<TambahFasilitasKosPage> {
  String? _value;

  final fasilitasController = TextEditingController();
  final kategoriController = TextEditingController();
  final jumlahController = TextEditingController();
  
  String? kategoriValue;
  String? fasilitasValue;

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
                //Back button
                MyIconButton(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DetailKosPage()));
                  }, icon: const Icon(Icons.arrow_back, size: 30, color: Color.fromRGBO(76, 103, 147, 1))),
                const SizedBox(height: 10),

                //Title page
                MyText(text: 'Tambah Fasilitas Kos', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 9),
                MyText(text: 'Kos Permata', fontSize: 24, fontWeight: FontWeight.w600),
                const SizedBox(height: 18),

                //Button Tambah Data
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: (){
                        
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(76, 103, 147, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      icon: const Icon(Icons.add, size: 15), 
                      label: MyWhiteText(text: 'Tambah Data', fontSize: 12, fontWeight: FontWeight.w400)
                    )
                  ],
                ),
                const SizedBox(height: 20),

                //Card Fasilitas
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Dropdown Fasilitas
                          SizedBox(
                            width: 100,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                contentPadding: const EdgeInsets.only(top: 5, bottom: 5, left: 15),
                                hintText: 'Fasilitas',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Quicksand',
                                ),
                                floatingLabelAlignment: FloatingLabelAlignment.center
                              ),
                              isExpanded: true,
                              items: const [
                                DropdownMenuItem(value: '1',child: Text('Fasilitas 1')),
                                DropdownMenuItem(value: '2',child: Text('Fasilitas 2')),
                                DropdownMenuItem(value: '3',child: Text('Fasilitas 3')),
                              ], 
                              onChanged: (value){
                                setState(() {
                                  value = fasilitasValue;
                                });
                              },
                              value: fasilitasValue,
                              // validator: (value){
                              //   if(value!.isEmpty){
                              //     return 'This field required';
                              //   }
                              // },
                            ),
                          ),

                          //Dropdown Kategori
                          SizedBox(
                            width: 100,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                contentPadding: const EdgeInsets.only(top: 5, bottom: 5, left: 15),
                                hintText: 'Kategori',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Quicksand',
                                ),
                                floatingLabelAlignment: FloatingLabelAlignment.center
                              ),
                              isExpanded: true,
                              items: const [
                                DropdownMenuItem(value: '1',child: Text('Kategori 1')),
                                DropdownMenuItem(value: '2',child: Text('Kategori 2')),
                                DropdownMenuItem(value: '3',child: Text('Kategori 3')),
                              ], 
                              onChanged: (value){
                                setState(() {
                                  value = kategoriValue;
                                });
                              },
                              value: kategoriValue,
                              // validator: (value){
                              //   if(value!.isEmpty){
                              //     return 'This field required';
                              //   }
                              // },
                            ),
                          ),
                          

                          //Field Jumlah
                          SizedBox(
                            width: 50, 
                            child: TextFormField(
                              controller: jumlahController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: Color.fromRGBO(76, 103, 147, 1))
                                ),
                                contentPadding: const EdgeInsets.all(4),
                                hintText: 'Jumlah',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Quicksand'
                                )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "This field required";
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),

                      //Button Simpan
                      MyCustomButton(text: 'Simpan', onTap: (){})
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
} 