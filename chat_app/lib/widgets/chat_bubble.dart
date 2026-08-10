import 'package:chat_app/constant.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
        margin: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        decoration: BoxDecoration(
          color: kPrimaryBgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(message.message, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
        margin: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        decoration: BoxDecoration(
          color: Color(0xFF006D84),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Text(message.message, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
