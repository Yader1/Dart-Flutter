import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_textfield.dart';

import '../widgets/app_icon.dart';

class login extends StatefulWidget {
  //Definiendo identificador de la Ruta
  static const String routeName = '/login';
  @override
  _loginState createState() => new _loginState();
 }
class _loginState extends State<login> {

  //Variables internas, se hace con guio bajo
  late String _email;
  late String _password;
  
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
          AppTextField(inputText: "Ingrece su correo", obscureText: false, onChanged: (value){ _email = value; },),
          SizedBox(height: 8.0,),
          AppTextField(inputText: "Ingresar contraseña", obscureText: true, onChanged: (value){ _password = value; },),
          SizedBox(height: 23.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.blueAccent, onPressed: (){ }, name: "Lon in")
        ]
      )
    )
   );
  }
}