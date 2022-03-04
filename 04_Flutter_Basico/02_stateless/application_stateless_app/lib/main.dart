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
  //Variables que serviran para cambiar el icono y texto
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(
    color: Colors.grey,
    fontSize: 30.0
  );
  
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
          crossAxisAlignment : CrossAxisAlignment.stretch, //Usar el ancho completo
          children: <Widget>[
            //Llamamos nuestro widget
            MyCard(title: Text("I love Flutter", style: textStyle,),
                      icon: Icon( Icons.favorite, color: Colors.redAccent,
                        size: iconSize,),
                    ),
            MyCard(title: Text("I like this video", style: textStyle,),
                    icon: Icon( Icons.thumb_up, color: Colors.blueAccent,
                    size: iconSize,),
            ),
            MyCard(title: Text("Next video", style: textStyle,),
                    icon: Icon( Icons.queue_play_next, color: Colors.blueGrey,
                    size: iconSize,),
            )
          ]
        ),
      ),
    );
  }
}

//Creamos un widget reutilizable
class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context){
    //Creamos una tarjeta que contendra lo que se mostrara
    return Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
            this.title, 
            this.icon
        ],
      ),
      )
    );
  }  
}