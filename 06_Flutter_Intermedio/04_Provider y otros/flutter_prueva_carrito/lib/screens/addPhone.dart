import 'package:flutter/material.dart';
import 'package:flutter_prueva_carrito/widgets/AppButton.dart';
import 'package:flutter_prueva_carrito/widgets/AppText.dart';
import 'package:flutter_prueva_carrito/widgets/AppTextBig.dart';
import 'package:flutter_prueva_carrito/widgets/AppTextPhone.dart';

class addPhone extends StatefulWidget {
  //Definiendo identificador de la Ruta
  static const String routeName = '/addPhone';
  addPhone({Key? key}) : super(key: key);

  @override
  State<addPhone> createState() => _addPhoneState();
}

class _addPhoneState extends State<addPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Colors.black54, //change ryour color here
            ),
            leading: IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/login');
              }),
              icon: Icon(Icons.arrow_back),
            )),
        body: Form(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  //Cntrar y ocupar todo el ancho de la pantalla
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AppTextBig(
                      text: "Verify your phone number",
                      size: 32,
                      color: Color.fromARGB(255, 21, 27, 42),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    AppText(
                        text:
                            "We have sent you an SMS with a code to number +84 905070017",
                        size: 22,
                        color: Color.fromARGB(255, 55, 55, 75)),
                    SizedBox(
                      height: 20,
                    ),
                    AppTextPhone(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Positioned(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(text: "Or loggin with", size: 18),
                        AppText(
                          text: "Social network",
                          color: Colors.orange,
                          size: 18,
                        )
                      ],
                    )),
                    SizedBox(
                      height: 60.0,
                    ),
                    AppButton(
                      color: Colors.orange,
                      name: "Next",
                      colorText: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/verificationNumber');
                      },
                    ),
                  ])),
        ));
  }
}