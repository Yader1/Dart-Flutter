import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = '/chat';
  @override
  _ChatScreenState createState() => new _ChatScreenState();
 }
class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(title:Text("Chat Flutter"))
   );
  }
}