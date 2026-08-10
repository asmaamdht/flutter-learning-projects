import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import 'package:toku_app/models/number.dart';
// import 'package:toku_app/components/item.dart';

// ignore: must_be_immutable
class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModule> number = const [
    ItemModule(
      image: 'assets/images/family_members/family_father.png',
      jgName: 'chichioya',
      arName: 'Father',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_daughter.png',
      jgName: 'Musume',
      arName: 'Daughter',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_grandfather.png',
      jgName: 'Ojisan',
      arName: 'Grand Father',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_mother.png',
      jgName: 'Hahaoya',
      arName: 'Mother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_grandmother.png',
      jgName: 'Sobo',
      arName: 'Grand Mother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_older_brother.png',
      jgName: 'Nisan',
      arName: 'Older Brother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_older_sister.png',
      jgName: 'Ane',
      arName: 'Older Sister',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_son.png',
      jgName: 'Musuko',
      arName: 'Son',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_younger_brother.png',
      jgName: 'Musuko',
      arName: 'Younger Brother',
      sound: '',
    ),
    ItemModule(
      image: 'assets/images/family_members/family_younger_sister.png',
      jgName: 'Musuko',
      arName: 'Younger Sister',
      sound: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF46322B),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return Item(number: number[index], color: Color(0xFF4CAF50));
        },
      ),
    );
  }
}
