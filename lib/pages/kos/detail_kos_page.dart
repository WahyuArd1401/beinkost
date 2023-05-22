import 'package:beinkost/components/my_icon_button.dart';
import 'package:beinkost/components/my_slider_card.dart';
import 'package:beinkost/components/my_text.dart';
import 'package:beinkost/pages/kamar/data_kamar_page.dart';
import 'package:beinkost/pages/kos/tambah_fasilitas_kos_page.dart';
import 'package:beinkost/pages/landing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../components/my_black_text.dart';
import '../../components/my_white_text.dart';

class DetailKosPage extends StatelessWidget{

  DetailKosPage({super.key});

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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage()));
                          } , 
                          icon: const Icon(
                            Icons.arrow_back, size: 30, color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 17,),

                        //Title page 
                        MyWhiteText(text: 'Kos Permata', fontSize: 24, fontWeight: FontWeight.w600),
                        MyWhiteText(
                          text: 'aslkdlashdjahskahkdhaksasddddddddddddsddddddddddddhdkas', 
                          fontSize: 12, 
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Icon(Icons.male, size: 20, color: Colors.white,),
                            const SizedBox(width: 5),
                            MyWhiteText(text: 'Laki-laki', fontSize: 12, fontWeight: FontWeight.w400)
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on, size: 20, color: Colors.white,),
                                const SizedBox(width: 5),
                                MyWhiteText(text: 'Malang, Jawa Timur', fontSize: 12, fontWeight: FontWeight.w400),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DataKamarPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(76, 103, 147, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                side: const BorderSide(
                                  color: Colors.white
                                )
                              ), 
                              child: const Text('Data Kamar')
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

            //Detail keterangan
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(14),
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
                  MyBlackText(text: 'Detail Kost Permata ini berada di area kampus Kota Malang dan merupakan hunian dengan fasiitas lengkap dan lingkungan nyaman untuk ditempati.', fontSize: 12, fontWeight: FontWeight.w400),
                  const SizedBox(height: 8,),
                  MyBlackText(text: 'Fasilitas', fontSize: 12, fontWeight: FontWeight.w700),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TambahFasilitasKosPage()));
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)
                          ),
                          side: const BorderSide(
                            color: Color.fromRGBO(76, 103, 147, 1)
                          )
                        ),
                        icon: const Icon(Icons.add, size: 15, color: Color.fromRGBO(76, 103, 147, 1),), 
                        label: MyText(text: 'Tambah Fasilitas', fontSize: 12, fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}