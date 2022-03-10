import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: <Widget>[
       Icon( Icons.home, size: 160.0, color: Colors.blueAccent ),
       Text("Primer Tab")
     ],
     )
   );
  }
}