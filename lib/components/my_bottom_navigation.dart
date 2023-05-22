import 'package:flutter/material.dart';

class MyBottomNavigation {
  Widget customBottomNavigation(BuildContext context){
    double myHeight =100.0;//Your height HERE
    return SizedBox(
    height: myHeight,
    width: MediaQuery.of(context).size.width,
    child:TabBar(
            tabs: [
              Tab( text: 'One', icon: Icon(Icons.import_contacts, size: 20.0) ),
              Tab( text: 'Two', icon: Icon(Icons.restaurant, size: 20.0) ),
              Tab( text: 'Three', icon: Icon(Icons.record_voice_over, size: 20.0) ),
            ],
            labelStyle: TextStyle(fontSize: 12.0),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white30,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
          ),
    );
  }
}