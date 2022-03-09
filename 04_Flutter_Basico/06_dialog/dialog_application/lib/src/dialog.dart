import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog ({ Key? key }) : super(key: key);

  @override
  _MyDialog createState() => _MyDialog();
}
//Utilizado para crear multiples opciones
enum DialogAction{
  yes,
  no
}

class _MyDialog extends State<MyDialog> {

  void alertResult(DialogAction action){
    print("Seleccionaste $action");
  }
  
  void showAlert(){
    AlertDialog dialog = AlertDialog(
      content: Text("Hola"),
      //Buttones
      actions: <Widget>[
        FlatButton(onPressed: (){alertResult(DialogAction.yes);}, child: Text("Si")),
        FlatButton(onPressed: (){alertResult(DialogAction.no);}, child: Text("No"))
      ],
    );

    showDialog(context: context, builder: (BuildContext context){ return dialog; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Dialog Widget"), 
      backgroundColor: Colors.orangeAccent
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aqui..."),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(child: Text("Visualizar", style: TextStyle(color: Colors.white),), color: Colors.blueAccent ,onPressed: showAlert,)
          ],
        ),
      ),
    );
  }
}