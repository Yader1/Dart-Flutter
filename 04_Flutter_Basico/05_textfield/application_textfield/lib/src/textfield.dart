import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextField createState() => _MyTextField();
}

class _MyTextField extends State<MyTextField> {
  String inputText = "";

  void onSubmitted(String value){
    setState(() {
      inputText = inputText + "\n" + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("TextField Widget"), 
      backgroundColor: Colors.orangeAccent
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aqui..."),
              onSubmitted: onSubmitted,
            ),
            Text(inputText)
          ],
        ),
      ),
    );
  }
}