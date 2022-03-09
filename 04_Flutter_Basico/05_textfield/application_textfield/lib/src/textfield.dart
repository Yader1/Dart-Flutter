import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextField createState() => _MyTextField();
}

class _MyTextField extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("TextField Widget"), 
      backgroundColor: Colors.orangeAccent
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aqui..."),
              onSubmitted: (String value) {print(value);},
            )
          ],
        ),
      ),
    );
  }
}