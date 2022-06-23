import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/mixins/validation_mixins.dart';
import 'package:flutter_chat_firebase/src/services/autentication.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_icon.dart';
import 'package:flutter_chat_firebase/src/widgets/app_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Registro extends StatefulWidget{
  static const String routeName = '/registro';
  @override
  _RegistroState createState() => new _RegistroState();
 }
 
class _RegistroState extends State<Registro> with ValidationMixins {
  //key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  //Controladores del TextField
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //Autovalidar
  bool _autoValidate = false;

  //Focus
  late FocusNode _focusNode;
  @override
  void initState(){
    super.initState();
    _focusNode = FocusNode();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }
  //Liberamos el widget que no se este utilizando
  @override
  void dispose(){
    super.dispose();
    _focusNode.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Form(
      key: _formKey,
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          //Cntrar y ocupar todo el ancho de la pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            //Llamamos nuestro widget del titulo de la aplicacion.
            AppIcon(),
            SizedBox(height: 38.0,),
            _emailField(),
            SizedBox(height: 8.0,),
            _passwordField(),
            SizedBox(height: 23.0,),
            //Llamamos a nuestro button y enviamos sus especificaciones
            _submitButton(),
          ]
        )
      )
    ),
   );
  }

   Widget _emailField(){
    return AppTextField(
      validator: validateEmail,
      autoValidate: _autoValidate,
      focusNode: _focusNode, 
      controller: _emailController,
      inputText: "Ingrece su correo", 
      obscureText: false, 
      onSaved: (value){},
    );
   }

   Widget _passwordField(){
    return AppTextField(
      validator: validatePassword,
      autoValidate: _autoValidate,
      controller: _passwordController,
      inputText: "Ingresar contraseña", 
      obscureText: true, 
      onSaved: (value){},
    );
   }
   Widget _submitButton(){
    return AppButton(color: Colors.blueAccent, onPressed: () async{
      if(_formKey.currentState!.validate()){
        //Enviamos el email y el password a firebase Auth
        var newUser = await Autentication().createUser(email: _emailController.text, password: _passwordController.text);
        //Verificamos que no sea nulo y si es correcto lo re dericcionamos
        if(newUser != null){
          Navigator.pushNamed(context, '/chat');
        }
        //Limpiamos los campos de TextFiel
        _emailController.text = "";
        _passwordController.text = "";
        //Enviamos el focus
        FocusScope.of(context).requestFocus(_focusNode);
      }else{
        setState(() => _autoValidate = true );
      }
    }, name: "Registrarse");
  }
}