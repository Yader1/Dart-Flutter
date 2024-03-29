import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String ButtonText = "Natigate";

  ButtonPurple(this.ButtonText);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
          )
        ),
        child: Center(
          child: Text(
            ButtonText,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 18.0,
              color: Colors.white,
            ),

          ),
        ),
      ),
    );
  }
}