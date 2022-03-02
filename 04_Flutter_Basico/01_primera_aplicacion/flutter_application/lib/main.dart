//Importamos el paquete de libreria de material de Flutter
import 'package:flutter/material.dart';

void main(){
  //Scaffold
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Mi primera aplicacion"),
      ),
      //Cuerpo de la aplicacion con Scaffold haciendo uso de contenedores
      body: Container(
        child: Center(
          child: Text(
            "Hola mundo",  
            //Le damos estilo al text
            style: TextStyle(fontSize: 20.0),
            ),
        )
      ),
    )
  );

  runApp(app);
}