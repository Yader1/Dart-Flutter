import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  //Metodos utilizados para el Menu
  Drawer getDrawer(BuildContext context){
    ListTile getItem(Icon icon, String descripcion, String router){
    return ListTile(
      leading: icon,
      title: Text(descripcion),
      //Metodo del clic
      onTap: (){
        Navigator.pushNamed(context, router);
      },
    );
    }

    ListView getList(){
    return ListView(
      children: <Widget>[
        getItem(Icon(Icons.settings), 'Configuracion', '/setting'),
        getItem(Icon(Icons.home), 'Principal', '/'), // un / indica que es el principal del menu
        getItem(Icon(Icons.battery_alert_rounded), 'Bateria', '/bateria'),
      ]
    );
    }

    return Drawer( child: getList() );
  }

  
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("Pagina Principal")),
    //Menu lateral
    drawer: getDrawer(context),
 );
 }
}