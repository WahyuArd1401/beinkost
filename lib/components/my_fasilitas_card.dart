import 'package:flutter/material.dart';

//BELOM JADIII !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class MyFasilitasCard extends StatefulWidget {
  @override
  State<MyFasilitasCard> createState() => _MyFasilitasCard();
}

class _MyFasilitasCard extends State<MyFasilitasCard>{
  String? _value;

  @override
  Widget build(BuildContext context){
    return Card(
      child: Expanded(
        child: Column(
          children: [
            DropdownButton<String>(
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Kamar Mandi',
                      child: Text('Kamar Mandi'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Wifi',
                      child: Text('Wifi'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Tempat Parkir',
                      child: Text('Tempat Parkir'),
                    ),
                  ], 
                  onChanged: (String? value){
                    setState(() {
                      _value = value;
                    }); 
                  },
                  hint: const Text('Fasilitas'),
                  value: _value,
                ),
          ],
        )
      )
    );
  }
  
}