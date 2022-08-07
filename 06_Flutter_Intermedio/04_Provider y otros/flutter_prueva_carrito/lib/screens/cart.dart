import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_prueva_carrito/models/cart.dart';

class Cart extends StatefulWidget {
  static const String routeName = '/cart';
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Consumer<CartModel>(
          builder: (context, cartModel, child) {
            return ListView.builder(
                itemCount: cartModel.cartItem.length,
                itemBuilder: (context, i) {
                  return Card(
                      child: Container(
                          width: 500.0,
                          height: 50.0,
                          color: cartModel.cartItem[i].color,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${cartModel.cartItem[i].nombre}",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white)),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(
                                "${cartModel.cartItem[i].repetidos}",
                                style: TextStyle(
                                    fontSize: 24.0, color: Colors.white),
                              ),
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
                                  cartModel.remove(cartModel.cartItem[i]);
                                },
                                child: Text('Remove'),
                              ),
                            ],
                          )));
                });
          },
        ));
  }
}
