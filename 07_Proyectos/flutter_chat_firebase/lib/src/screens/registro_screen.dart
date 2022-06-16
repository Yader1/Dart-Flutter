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

  //Controladores del TextField
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //Focus
  late FocusNode _focusNode;
  @override
  void initState(){
    super.initState();
    _focusNode = FocusNode();
  }
  //Liberamos el widget que no se este utilizando
  @override
  void dispose(){
    super.dispose();
    _focusNode.dispose();
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
          SizedBox(height: 38.0,),
          AppTextField(focusNode: _focusNode, controller: _emailController,inputText: "Ingrece su correo", obscureText: false, onChanged: (value){ _email = value; },),
          SizedBox(height: 8.0,),
          AppTextField(controller: _passwordController,inputText: "Ingresar contraseña", obscureText: true, onChanged: (value){ _password = value; },),
          SizedBox(height: 23.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          AppButton(color: Colors.blueAccent, onPressed: () async{
                //Enviamos el email y el password a firebase Auth
              var newUser = await Autentication().createUser(email: _email, password: _password);
              //Verificamos que no sea nulo y si es correcto lo re dericcionamos
              if(newUser != null){
                Navigator.pushNamed(context, '/chat');
              }
              //Enviamos el focus
              FocusScope.of(context).requestFocus(_focusNode);
              //Limpiamos los campos de TextFiel
              _emailController.text = "";
              _passwordController.text = "";
          }, name: "Registrarse")
        ]
      )
    )
   );
  }
}