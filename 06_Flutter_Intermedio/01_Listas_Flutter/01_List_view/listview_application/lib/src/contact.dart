import 'package:flutter/material.dart';
import 'package:listview_application/src/screens/item_contacto.dart';

class Contact extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("Contactos")),
    body: ListView(
      children: <Widget>[
        ContactItem()
      ]),
 );
 }
}