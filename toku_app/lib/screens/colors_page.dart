import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import 'package:toku_app/models/number.dart';
// import 'package:toku_app/components/item.dart';

// ignore: must_be_immutable
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModule> number = const [
    ItemModule(
      image: 'assets/images/colors/color_black.png',
      jgName: 'chichioya',
      arName: 'Father',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_brown.png',
      jgName: 'Musume',
      arName: 'Daughter',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jgName: 'Ojisan',
      arName: 'Grand Father',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_gray.png',
      jgName: 'Hahaoya',
      arName: 'Mother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_green.png',
      jgName: 'Sobo',
      arName: 'Grand Mother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_red.png',
      jgName: 'Nisan',
      arName: 'Older Brother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/color_white.png',
      jgName: 'Ane',
      arName: 'Older Sister',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/colors/yellow.png',
      jgName: 'Musuko',
      arName: 'Son',
      sound: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF46322B),
        title: Text('Colors', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return Item(number: number[index], color: Colors.deepPurpleAccent);
        },
      ),
    );
  }
}
