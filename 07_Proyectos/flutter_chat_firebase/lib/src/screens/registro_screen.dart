import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/services/autentication.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_icon.dart';
import 'package:flutter_chat_firebase/src/widgets/app_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Registro extends StatefulWidget {
  static const String routeName = '/registro';
  @override
  _RegistroState createState() => new _RegistroState();
 }
 
class _RegistroState extends State<Registro> {
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
          SizedBox(height: 38.0,),
          AppTextField(inputText: "Ingrece su correo", obscureText: false, onChanged: (value){ _email = value; },),
          SizedBox(height: 8.0,),
          AppTextField(inputText: "Ingresar contraseña", obscureText: true, onChanged: (value){ _password = value; },),
          SizedBox(height: 23.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.blueAccent, onPressed: () async{
                //Enviamos el email y el password a firebase Auth
              var newUser = await Autentication().createUser(email: _email, password: _password);
              //Verificamos que no sea nulo y si es correcto lo re dericcionamos
              if(newUser != null){
                Navigator.pushNamed(context, '/chat');
              }    
          }, name: "Registrarse")
        ]
      )
    )
   );
  }
}