import 'package:flutter/material.dart';
import 'package:flutter_prueva_carrito/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_prueva_carrito/models/item.dart';
import 'package:flutter_prueva_carrito/models/cart.dart';
import 'package:badges/badges.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Catalogo extends StatefulWidget {
  static const String routeName = '/catalogo';
  final String? nombreUsuario;
  Catalogo({Key? key, this.nombreUsuario}) : super(key: key);

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  List<Item> items = [
    Item(nombre: "Azul", color: Colors.blue, repetidos: 0),
    Item(nombre: "Amarillo", color: Colors.yellow, repetidos: 0),
    Item(nombre: "Rojo", color: Colors.red, repetidos: 0),
    Item(nombre: "Verde", color: Colors.green, repetidos: 0),
    Item(nombre: "Azul marino", color: Colors.cyan, repetidos: 0),
    Item(nombre: "Violeta", color: Colors.deepPurple, repetidos: 0)
  ];

  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Bienvenido $username"),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                child: Consumer<CartModel>(
                  builder: (context, cartModel, child) {
                    return Badge(
                      badgeColor: Colors.deepPurpleAccent,
                      badgeContent: Text(
                        "${cartModel.cout}",
                        style: TextStyle(color: Colors.white),
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/cart');
                          },
                          icon: Icon(Icons.bookmark_add_outlined)),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(child: Consumer<CartModel>(
              builder: ((context, cartModel, child) {
                return Container(
                    width: 500.0,
                    height: 50.0,
                    color: items[i].color,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${items[i].nombre}",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                        SizedBox(
                          width: 120.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                            onPrimary: Colors.black26,
                            minimumSize: Size(100, 40),
                          ),
                          onPressed: () {
                            cartModel.add(items[i]);
                          },
                          child: Text('Add'),
                        ),
                      ],
                    ));
              }),
            ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logindata.setBool('login', true);
          logindata.setString('username', "");
          Navigator.pushReplacement(
              context, new MaterialPageRoute(builder: (context) => login()));
        },
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.exit_to_app_outlined),
      ),
    );
  }
}
