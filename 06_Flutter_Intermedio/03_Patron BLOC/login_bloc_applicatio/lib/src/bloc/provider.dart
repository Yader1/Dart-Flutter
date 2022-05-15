import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/bloc/bloc.dart';

class Provider extends InheritedWidget{
  Provider({Key? key, required Widget child}) : super(key: key ,child: child);

  final bloc = Bloc();
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) => 
    (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider).bloc;
    
}