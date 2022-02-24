abstract class Vehiculo{
  String color = "";
  String modelo = "";
  String marca = "";

  //Metodos abstractos
  void miComustible();
}
//Metodo creado para utilizarlo como implementacion
abstract class EsTrasporte{
  void QueTrasporteSoy();
}

//Implementamos el metodo
class Camion extends Vehiculo implements EsTrasporte{
  @override
  void miComustible() {
    // TODO: implement miComustible
    print("Disel");
  }

  @override
  void QueTrasporteSoy() {
    print("Soy un camion");
  }
}
class Auto extends Vehiculo{
  @override
  void miComustible() {
    // TODO: implement miComustible
    print("Gasolina");
  }
}
class Moto extends Vehiculo{
  @override
  void miComustible() {
    // TODO: implement miComustible
    print("Gasolina");
  }
}

void main(){
  var camion = new Camion();
  camion.miComustible();
}