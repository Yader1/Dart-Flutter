import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/bloc/bloc.dart';

class Provider extends InheritedWidget{
  final bloc = Bloc();

  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) => 
    (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider).bloc;
    
}