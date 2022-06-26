import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/services/autentication.dart';
import 'package:flutter_chat_firebase/src/services/message_service.dart';

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

  TextEditingController _messageController = TextEditingController();

  BoxDecoration _messageContainerDecoration = BoxDecoration(
      border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ));

  InputDecoration _messageTextFieldDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      hintText: 'Ingresar su mensaje aqui...',
      border: InputBorder.none);

  TextStyle _sendButtonStyle = TextStyle(
      color: Colors.lightBlueAccent,
      fontWeight: FontWeight.bold,
      fontSize: 18.0);

  //Optener datos del usuario de firebase
  final auth = FirebaseAuth.instance;
  late User loggedInUser;
  Future<void> getCurrentUser() async {
    var user = await Autentication().getCurrentUser();
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Chat Flutter"),
        actions: <Widget>[
          //Button para des logger
          IconButton(
              icon: Icon(Icons.power_settings_new),
              onPressed: () {
                Autentication().singOut();
                Navigator.pop(context);
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: _messageContainerDecoration,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    decoration: _messageTextFieldDecoration,
                    controller: _messageController,
                  )),
                  FlatButton(
                    onPressed: () {
                      MessageService().save(
                          collectionName: "message", collectionValues: {
                            'value': _messageController.text,
                            'sender': loggedInUser.email
                          });
                    },
                    child: Text("Enviar", style: _sendButtonStyle),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
