import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  static const String routeName = "/setting";

 @override
 Widget build(BuildContext context) {
 return Scaffold(
    appBar: AppBar(title:Text("Configuracion"),),
    body: Container(
      child:Center(
        child: Text("Pantalla de configuracion"),
      )
    )
 );
 }
}