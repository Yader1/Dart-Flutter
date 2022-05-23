import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_icon.dart';

class Welcome extends StatefulWidget {
  //Definiendo identificador de la Ruta, como es la principal no tiene valor
  static const String routeName = '';

  @override
  _WelcomeState createState() => new _WelcomeState();
 }
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      //Colocamos todos nuestros widget
      child: Column(
        //Cntrar y ocupar todo el ancho de la pantalla
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Llamamos nuestro widget del titulo de la aplicacion.
          AppIcon(),
          SizedBox(height: 45.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.lightBlueAccent, onPressed: (){ Navigator.pushNamed(context, '/login'); }, name: "Lon in"),
          AppButton(color: Colors.blueAccent, onPressed: (){}, name:"Registrarse"),
        ]
      )
    )

   );
  }
}