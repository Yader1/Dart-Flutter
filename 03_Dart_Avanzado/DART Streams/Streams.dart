import 'dart:async';

void main() {
  final orden = Orden('pizza');
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
  controller.stream.map((orden) => orden.type).transform(yader)
    .listen((pizza) => print('Pedido de $pizza'),
    onError: (err) => print(err)
    );
}

class Orden{
  String type;

  Orden(this.type);
}

class Food{
  
}