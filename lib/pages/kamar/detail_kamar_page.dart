import 'package:beinkost/components/my_custom_button.dart';
import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_list_detail_kamar.dart';
import 'package:beinkost/components/my_slider_card.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/kamar/data_kamar_page.dart';
import 'package:beinkost/pages/kamar/edit_data_kamar.dart';
import 'package:beinkost/pages/kos/tambah_fasilitas_kos_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../components/my_black_text.dart';
import '../../components/my_white_text.dart';

class DetailKamarPage extends StatelessWidget{

  DetailKamarPage({super.key});

  List<String> list =["first text", "second text", "third text"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Detail Kos
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20), 
                  bottomRight: Radius.circular(20)
                ),
                color: Color.fromRGBO(76, 103, 147, 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(24, 55, 24, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        //Back button
                        MyIconButton(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DataKamarPage()));
                          } , 
                          icon: const Icon(
                            Icons.arrow_back, size: 30, color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 17,),

                        //Title page 
                        MyWhiteText(text: 'Kamar 1', fontSize: 24, fontWeight: FontWeight.w600),
                        MyWhiteText(
                          text: 'Tipe 1 | Lantai 1', 
                          fontSize: 12, 
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on, size: 20, color: Colors.white,),
                                const SizedBox(width: 5),
                                MyWhiteText(text: 'Kos Permata | Rp 1.000.000/Bulan', fontSize: 12, fontWeight: FontWeight.w700),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //Image Slider
            CarouselSlider(
              items: [
                MySliderCard(urlImage: 'https://images.pexels.com/photos/2360673/pexels-photo-2360673.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                MySliderCard(urlImage: 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                MySliderCard(urlImage: 'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                MySliderCard(urlImage: 'https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
              ], 
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  //Detail keterangan
                  Container(
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset.fromDirection(45.0),
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyBlackText(text: 'Detail', fontSize: 15, fontWeight: FontWeight.w700),
                        SizedBox(height: 5),
                        MyListDetailKamar(myIconList: Icon(Icons.expand, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: '4x4 m2'),
                        MyListDetailKamar(myIconList: Icon(Icons.window, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Pemandangan Luar Jendela',),
                        MyListDetailKamar(myIconList: Icon(Icons.electric_bolt, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Listrik token',),
                        MyListDetailKamar(myIconList: Icon(Icons.supervisor_account, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Kapasitas 1 Orang',),
                      ],
                    ),
                  ),
                  SizedBox(height: 19,),
                
                  //Detail Fasilitas
                  Container(
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset.fromDirection(45.0),
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyBlackText(text: 'Fasilitas', fontSize: 15, fontWeight: FontWeight.w700),
                        SizedBox(height: 5),
                        MyListDetailKamar(myIconList: Icon(Icons.wifi, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Wifi'),
                        MyListDetailKamar(myIconList: Icon(Icons.tv, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Televisi',),
                        MyListDetailKamar(myIconList: Icon(Icons.ac_unit, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'AC',),
                        MyListDetailKamar(myIconList: Icon(Icons.chair_alt, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Kursi Belajar',),
                        MyListDetailKamar(myIconList: Icon(Icons.bed, size: 12, color: Color.fromRGBO(76, 103, 147, 1)), myDeskripsiList: 'Kasur',),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                
                  //Button Edit Kamar
                  MyCustomButton(text: 'Edit Data Kamar', onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> EditDataKamarPage()));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}