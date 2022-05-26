import 'package:firebase_core/firebase_core.dart';
// Import the generated file
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/src/screens/chat_screen.dart';
import 'package:flutter_chat_firebase/src/screens/login_screen.dart';
import 'package:flutter_chat_firebase/src/screens/registro_screen.dart';
import 'package:flutter_chat_firebase/src/screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      //Dejamos definido el tema de la aplicacion
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54), 
        ),
      ),
      //Definir pagina principal
      initialRoute: Welcome.routeName,
      //Ruta de navegacion
      routes: <String, WidgetBuilder>{
        login.routeName: (BuildContext context) => login(),
        Welcome.routeName: (BuildContext context) => Welcome(),
        Registro.routeName: (BuildContext context) => Registro(),
        ChatScreen.routeName: (BuildContext context) => ChatScreen(),
      }
    );
  }
}