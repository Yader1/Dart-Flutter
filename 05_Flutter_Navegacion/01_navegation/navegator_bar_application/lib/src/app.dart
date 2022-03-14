import 'dart:html';

import 'package:flutter/material.dart';
import 'package:navegator_bar_application/src/screens/segundo.dart';

class App extends StatefulWidget{
  _app createState() => _app();
}

class _app extends State<App>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Primera pantalla")),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar pantalla"),
          onPressed: () {
            //Para navegar a otra pantalla hacemos...
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Segunda("Hola"))
            );
          },
        )
      )
    );
  }
}