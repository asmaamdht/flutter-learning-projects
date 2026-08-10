import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class CustomTitleScreen extends StatelessWidget {
  const CustomTitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(kLogo),
        Text(
          'Scholar Chat',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontFamily: 'Pacifico',
          ),
        ),
      ],
    );
  }
}
