import 'package:flutter/material.dart';
import 'package:flutter_prueva_carrito/models/cart.dart';
import 'package:flutter_prueva_carrito/screens/cart.dart';
import 'package:flutter_prueva_carrito/screens/catalogo.dart';
import 'package:flutter_prueva_carrito/screens/addPhone.dart';
import 'package:flutter_prueva_carrito/screens/verificacion.dart';
import 'package:flutter_prueva_carrito/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  late SharedPreferences _logindata;
  WidgetsFlutterBinding.ensureInitialized();
  _logindata = await SharedPreferences.getInstance();
  bool checkLogin = _logindata.getBool('login') ?? false;

  runApp(MyApp(checkLogin));
}

class MyApp extends StatelessWidget {
  bool checkLogin;

  MyApp(this.checkLogin);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CartModel();
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mi App 1',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2.0, color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                borderSide: BorderSide(width: 2.0, color: Colors.orange),
              ),
            ),
          ),
          initialRoute: checkLogin ? Catalogo.routeName : login.routeName,
          //Ruta de navegacion
          routes: <String, WidgetBuilder>{
            login.routeName: (BuildContext context) => login(),
            Catalogo.routeName: (BuildContext context) => Catalogo(),
            Cart.routeName: (BuildContext context) => Cart(),
            PageVerification.routeName: (BuildContext context) =>
                PageVerification(),
            addPhone.routeName: (BuildContext context) => addPhone(),
          }),
    );
  }
}
