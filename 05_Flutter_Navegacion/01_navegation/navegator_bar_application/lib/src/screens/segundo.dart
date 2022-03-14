import 'package:flutter/material.dart';


class Segunda extends StatefulWidget{
  _segunda createState() => _segunda();
}

class _segunda extends State<Segunda>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Segunda pantalla")),
      body: Center(
      child: RaisedButton(
        child: Text("Ir atras"),
        onPressed: () {
          //Para navegar atras hacemos...
          Navigator.pop(context);
        },
      )
    )
    );
  }
}