import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_icon.dart';
import 'package:flutter_chat_firebase/src/widgets/app_textfield.dart';

class Registro extends StatefulWidget {
  static const String routeName = '/registro';
  @override
  _RegistroState createState() => new _RegistroState();
 }
class _RegistroState extends State<Registro> {
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
          AppTextField(inputText: "Ingrece su correo"),
          SizedBox(height: 8.0,),
          AppTextField(inputText: "Ingresar contraseña"),
          SizedBox(height: 23.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.blueAccent, onPressed: (){ }, name: "Registrarse")
        ]
      )
    )
   );
  }
}