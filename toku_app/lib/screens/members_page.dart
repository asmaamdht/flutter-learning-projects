import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/number.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});
  // final Number one = const Number(
  //   image: 'assets/images/numbers/number_one.png',
  //   jgName: 'ichi',
  //   arName: 'one',
  // );

  final List<ItemModule> numbers = const [
    ItemModule(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jgName: 'ichi',
      arName: 'one',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jgName: 'ni',
      arName: 'two',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jgName: 'san',
      arName: 'three',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jgName: 'shi/yon',
      arName: 'four',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jgName: 'go',
      arName: 'five',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jgName: 'roku',
      arName: 'six',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jgName: 'shichi/nana',
      arName: 'seven',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jgName: 'hachi',
      arName: 'eight',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jgName: 'kyu',
      arName: 'nine',
    ),
    ItemModule(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jgName: 'ju',
      arName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF46322B),
        title: Text('Nembers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(number: numbers[index], color: Color(0xffEF9235));
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];

  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(number: numbers[i]));
  //   }

  //   return itemList;
  // }
}
