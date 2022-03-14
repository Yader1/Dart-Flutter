import 'package:flutter/material.dart';


class Segunda extends StatelessWidget{
  //Variables usada para recibir datos
  String titulo = "";
  
  Segunda(String titulo){
    this.titulo = titulo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  //Titulo pasado por datos
      appBar: AppBar(title:Text(titulo)),
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