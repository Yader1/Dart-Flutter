import 'package:flutter/material.dart';
import 'package:form_application/src/mixins/validacio_mixins.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
 }
class _LoginState extends State<Login> with validationMixins{
 final GlobalKey<FormState> formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
   return new Container(
     margin: EdgeInsets.all(20.0),
     child: Form(
       key: formKey,
       child: Column(children: <Widget>[
         emailField(),
         passwordField(),
         Container(margin: EdgeInsets.only(top: 25.0)),
         submitField(),
       ],),
      ),
   );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'example@email.com'
      ),
      validator: validateEmail,
      onSaved: (String? value){
      },
    );
  }

  Widget passwordField(){
    return TextFormField(
      obscureText: true, //Ocultar contraseña
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'password'
      ),
      validator: validatePassword,
       onSaved: (String? value){
        
      },
    );
  }

  Widget submitField(){
    return RaisedButton(
      child: Text('Enviar'),
      onPressed:(){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
        }  
      }
    );
  }
}