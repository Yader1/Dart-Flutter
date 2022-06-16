import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/services/autentication.dart';
import 'package:flutter_chat_firebase/src/widgets/app_button.dart';
import 'package:flutter_chat_firebase/src/widgets/app_icon.dart';
import 'package:flutter_chat_firebase/src/widgets/app_textfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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

  bool showSpinner = false;

  //Controladores del TextField
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //Focus
  late FocusNode _focusNode;

  //key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 
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
  }

  //Metodo para settiar
  void setSpinnerStatus(bool status){
    setState(() {
      showSpinner = status;
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Form(
        key: _formKey,
        child:Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
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
            _submitButton(),
          ]
        )
      ),),
    ),
   );
  }

  Widget _emailField(){
    return AppTextField(
      focusNode: _focusNode, 
      controller: _emailController, 
      inputText: "Ingrece su correo", 
      obscureText: false, 
      onSaved: (value){ _email = value; },
    );
  }

  Widget _passwordField(){
    return AppTextField(
      controller: _passwordController, 
      inputText: "Ingresar contraseña", 
      obscureText: true, 
      onSaved: (value){ _password = value; },
    );
  }

  Widget _submitButton(){
    //Llamamos a nuestro button y enviamos sus especificaciones
    return AppButton(
      color: Colors.blueAccent, 
      onPressed: () async{
        if(_formKey.currentState.validate()){
          setSpinnerStatus(true);
          var user = await Autentication().loginUser(email: _email, password: _password);
          if(user != null){
            Navigator.pushNamed(context, '/chat');
          }
          //Enviamos el focus
          FocusScope.of(context).requestFocus(_focusNode);
          _emailController.text = "";
          _passwordController.text = ""; 
          setSpinnerStatus(false);
        }          
      },
      name: "Lon in");
  }
}