import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Container(
    margin: EdgeInsets.all(20.0),
    child: Column(children: <Widget>[
     emailField(),
     passwordField(),
     Container(margin: EdgeInsets.only(top: 25.0)),
     submitField()
    ],)
 );
 }

 Widget emailField(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@email.com',
        labelText: 'Email',
        errorText: ''
      )
   );
 }

 Widget passwordField(){
   return TextField(
      decoration: InputDecoration(
        hintText: 'Contraseña',
        labelText: 'Contraseña'
      )
   );
 }

 Widget submitField(){
   return RaisedButton( 
    child: Text('Enviar'),
    onPressed:(){} 
  );
 }
}