import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("Bateria"),),
    body: Container(
      child:Center(
        child: Text("Pantalla de bateria"),
      )
    )
 );
 }
}