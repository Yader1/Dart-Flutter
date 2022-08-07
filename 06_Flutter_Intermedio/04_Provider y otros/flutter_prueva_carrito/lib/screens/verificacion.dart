import 'package:flutter/material.dart';
import 'package:flutter_prueva_carrito/widgets/AppText.dart';
import 'package:flutter_prueva_carrito/widgets/AppTextBig.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class PageVerification extends StatefulWidget {
  PageVerification({Key? key}) : super(key: key);
  static const String routeName = '/verificationNumber';

  @override
  State<PageVerification> createState() => _PageVerificationState();
}

class _PageVerificationState extends State<PageVerification> {
  GlobalKey<FormState> keyForm = new GlobalKey();

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
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Form(
        key: keyForm,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                //Cntrar y ocupar todo el ancho de la pantalla
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  AppTextBig(
                    text: "Phone Verification",
                    size: 36,
                    color: Color.fromARGB(255, 21, 27, 42),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  AppText(
                      text: "Enter your OTP code here",
                      size: 20,
                      color: Color.fromARGB(255, 55, 55, 75)),
                  SizedBox(
                    height: 50,
                  ),
                  Positioned(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        OtpTextField(
                          numberOfFields: 4,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          showCursor: false,
                          fieldWidth: 70.0,
                          filled: true,
                          fillColor: Colors.orange,
                          borderColor: Colors.orange,
                          focusedBorderColor: Colors.orange,
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                              decorationThickness: 4.0),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            Navigator.pushNamed(context, '/catalogo');
                          }, // end onSubmit
                        ),
                      ])),
                  SizedBox(
                    height: 60,
                  ),
                  AppText(text: "Didn't you received and code?", size: 18),
                  SizedBox(
                    height: 5,
                  ),
                  AppText(
                    text: "Social network",
                    color: Color.fromARGB(255, 255, 166, 33),
                    size: 18,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                ])),
      ),
    );
  }
}
