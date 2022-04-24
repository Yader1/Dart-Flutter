import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  final bloc = Bloc();

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
      ),
      onChanged: (value) => bloc.changeEmail,
   );
 }

 Widget passwordField(){
   return TextField(
      decoration: InputDecoration(
        hintText: 'Contraseña',
        labelText: 'Contraseña'
      ),
       onChanged: (value) => bloc.changePassword,
   );
 }

 Widget submitField(){
   return RaisedButton( 
    child: Text('Enviar'),
    onPressed:(){} 
  );
 }
}