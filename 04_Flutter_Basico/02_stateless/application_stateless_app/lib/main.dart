import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp(),
    )
  );
}
//Cremos nuestros widgets
/**
 * En flutter existen dos tipos de widget,
 * 1. Stateless los cuales estos no permiten contener datos
 * 2. Stateful los cuales contiene datos
 */
class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    //Retornamos el contenido de la aplicacion
    return Scaffold(
      //Retornamos una barra superior
      appBar: AppBar(title: 
      Text("Stateless Widget"),
      ),
      //Retornamos el contenido del cuerpo de la aplicacion
      body: Container(
        //Hacemos columnas que funcionan como tipo listas
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.stretch,
          children: <Widget>[
            //Creamos una tarjeta que contendra lo que se mostrara
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                 child: Column(
                 children: <Widget>[
                  Text("I love Flutter",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0),
                  ),
                  Icon(Icons.favorite,
                  color: Colors.redAccent,
                  size: 40.0)
                ],
              ),
              )
            )
          ],
        ),
      ),
    );
  }
}