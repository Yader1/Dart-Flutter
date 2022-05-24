import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';

import '../widgets/app_icon.dart';

class login extends StatefulWidget {
  //Definiendo identificador de la Ruta
  static const String routeName = '/login';
  @override
  _loginState createState() => new _loginState();
 }
class _loginState extends State<login> {
  //Widget de campo de datos
  TextField getTextField(String inputText){
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        hintText: inputText,
        //Diseño circular del campo de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))
        ),
        //Diseño de color del border del campo de texto
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
       padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
         //Cntrar y ocupar todo el ancho de la pantalla
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          //Llamamos nuestro widget del titulo de la aplicacion.
          AppIcon(),
          SizedBox(height: 48.0,),
          getTextField("Ingresar Email"),
          SizedBox(height: 8.0,),
          getTextField("Ingresar contraseña"),
          SizedBox(height: 23.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.blueAccent, onPressed: (){ }, name: "Lon in")
        ]
      )
    )
   );
  }
}