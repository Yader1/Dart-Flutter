import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/services/autentication.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = '/chat';
  @override
  _ChatScreenState createState() => new _ChatScreenState();
 }
class _ChatScreenState extends State<ChatScreen> {
  //Inicializamos de manera inmediada
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  //Optener datos del usuario de firebase
  final auth = FirebaseAuth.instance;
  late User loggedInUser;
  Future<void> getCurrentUser() async {
      var user = await Autentication().getCurrentUser();
      if(user != null ){
        loggedInUser = user;
        print(loggedInUser.email);
      }
  }
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(title:Text("Chat Flutter"),
     actions: <Widget>[
      //Button para des logger
      IconButton(
        icon: Icon(Icons.power_settings_new),
        onPressed: (){
          Autentication().singOut();
          Navigator.pop(context);
        }
      )
     ],),
   );
  }
}