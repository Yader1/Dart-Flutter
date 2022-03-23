import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
 }
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   return new Container(
     margin: EdgeInsets.all(20.0),
     child: Form(
       child: Column(children: <Widget>[
         emailField(),
         passwordField(),
         submitField()
       ]),
      ),
   );
  }

  Widget emailField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'example@email.com'
      ),
    );
  }

  Widget passwordField(){
    
  }

  Widget submitField(){
    
  }
}