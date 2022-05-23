import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  //Definiendo identificador de la Ruta, como es la principal no tiene valor
  static const String routeName = '';

  @override
  _WelcomeState createState() => new _WelcomeState();
 }
class _WelcomeState extends State<Welcome> {

  //Button de base, resive el color del button, el texto que mostrara el button y el evento a realizar
  Widget getButton(MaterialAccentColor color, String name, VoidCallback onPressed){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      //Propiedades de estilo del button
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: SizedBox(
          height: 43.0,
          child: FlatButton(
            child: Text(name),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      //Colocamos todos nuestros widget
      child: Column(
        //Cntrar y ocupar todo el ancho de la pantalla
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Propiedad para el titulo mas el icono a lado.
          Row(
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text('Flutter Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700
                  )
              )
            ]
          ),
          SizedBox(height: 45.0,),
          //Llamamos a nuestro button y enviamos sus especificaciones
          getButton(Colors.lightBlueAccent, "Lon in", (){ Navigator.pushNamed(context, '/login'); }),
          getButton(Colors.blueAccent, "Registrarse", (){})
        ]
      )
    )

   );
  }
}