import 'package:flutter/material.dart';
import 'package:listview_application/src/model/contact_model.dart';
import 'package:listview_application/src/screens/item_contacto.dart';

class Contact extends StatelessWidget {
  //Metodo que devuelve la lista de contactos
  buildList(){
    return <ContactModel>[
      ContactModel(name: "Yader Mejia", email: "yadermejiac123@gmail.com"),
      ContactModel(name: "Manuel Altamirano", email: "manuel@gmail.com"),
      ContactModel(name: "Oneall Campbell", email: "oneallc@gmail.com"),
    ];
  }
//Convertimos nuestra listas
List<ContactItem> buildContactList(){
  return buildList()
    .map<ContactItem>((contact) => ContactItem(contact: contact,))
    .toList();
}

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("Contactos")),
    body: ListView(
      children:
        buildContactList()
      ),
 );
 }
}