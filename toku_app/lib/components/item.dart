// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final ItemModule number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jgName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.arName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // player.play(AssetSource(number.sound));
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.number, required this.color});
  final ItemModule number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jgName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.arName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // player.play(AssetSource(number.sound));
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.play_arrow, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
