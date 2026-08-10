import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  String text;
  Color color;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 18),
        width: double.infinity,
        color: color,
        height: 65,
        alignment: Alignment.centerLeft,

        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}

class GestereDetector {}
