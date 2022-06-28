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
    _getMessage();
  }

  TextEditingController _messageController = TextEditingController();

  BoxDecoration _messageContainerDecoration = const BoxDecoration(
      border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ));

  InputDecoration _messageTextFieldDecoration = const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      hintText: 'Ingresar su mensaje aqui...',
      border: InputBorder.none);

  TextStyle _sendButtonStyle = const TextStyle(
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

  void _getMessage() async {
    await for (var snapshot in MessageService().getMessageStream()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        title: const Text("Chat Flutter"),
        actions: <Widget>[
          //Button para des logger
          IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {
                Autentication().singOut();
                Navigator.pop(context);
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            StreamBuilder(
                stream: MessageService().getMessageStream(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var messages = snapshot.data.docs;
                    List<ChatItem> chatItems = [];

                    for (var message in messages) {
                      final messageValue = message.data["values"];
                      final messageSender = message.data["sender"];
                      chatItems.add(ChatItem(
                          message: messageValue, sender: messageSender));
                    }
                    return Flexible(
                        child: ListView(
                      children: chatItems,
                    ));
                  }
                }),
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
                          collectionName: "message",
                          collectionValues: {
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

class ChatItem extends StatelessWidget {
  late final String? sender;
  late final String? message;

  ChatItem({this.sender, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
        Text(
          sender!,
          style: const TextStyle(fontSize: 15.0, color: Colors.black54),
        ),
        Material(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.lightBlueAccent,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child:Text(message!,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            )
          ),
          )
      ]),
    );
  }
}
