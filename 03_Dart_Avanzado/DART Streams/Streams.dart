import 'dart:async';

void main() {
  final orden = Orden('Tacos');
  final yader = StreamTransformer.fromHandlers(
    handleData: (foodType, sink){
      if(foodType == 'pizza'){
        sink.add(new Food());
      }else{
        sink.addError('No tenemos ese producto');
      }
    }
  );
  final controller = StreamController();
  controller.sink.add(orden);
  controller.stream.map((orden) => orden.type).transform(yader);
}

class Orden{
  String type;

  Orden(this.type);
}

class Food{
  
}