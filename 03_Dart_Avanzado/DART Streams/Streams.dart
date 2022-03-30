import 'dart:async';

void main() {
  final orden = Orden('Tacos');
  final controller = StreamController();
  controller.sink.add(orden);
}

class Orden{
  String type;

  Orden(this.type);
}

class Food{
  
}