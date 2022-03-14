import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  //Metodos utilizados para el Menu
  ListTile getItem(Icon icon, String descripcion){
    return ListTile(
      leading: icon,
      title: Text(descripcion),
    );
  }
  ListView getDrawer(){
    return ListView(
      children: <Widget>[
        getItem(Icon(Icons.settings), 'Configuracion'),
        getItem(Icon(Icons.home), 'Principal'),
        getItem(Icon(Icons.battery_alert_rounded), 'Bateria'),
      ]
    );
  }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("Pagina Principal")),
    //Menu lateral
    drawer: Drawer(child: getDrawer()),
 );
 }
}