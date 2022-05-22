import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/bloc/bloc.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {

 @override
 Widget build(BuildContext context) {

   final bloc = Provider.of<Bloc>(context);

  return new Container(
    margin: EdgeInsets.all(20.0),
    child: Column(children: <Widget>[
     emailField(bloc),
     passwordField(bloc),
     Container(margin: EdgeInsets.only(top: 25.0)),
     submitField(bloc)
    ],)
 );
 }

 Widget emailField(Bloc bloc){
   return StreamBuilder(
     stream: bloc.email,
     builder: (context, snapshot){
       return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@email.com',
          labelText: 'Email',
          errorText: snapshot.error.toString() //Revisar e investigar
        ),
        onChanged: bloc.changeEmail,
      );
    }
   );
 }

 Widget passwordField(Bloc bloc){
   return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot){
      return TextField(
      decoration: InputDecoration(
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        errorText: snapshot.error.toString() //Revisar e investigar
        ),
       onChanged: bloc.changePassword,
      );
    }
   );
 }

 Widget submitField(Bloc bloc){
   return StreamBuilder(
    stream: bloc.submitValid,
    builder: (context, snapshot){
      return RaisedButton( 
        child: Text('Enviar'),
        onPressed: snapshot.hasData ? bloc.submit : null, 
      );
    } 
  );
 }
}