//Ejeplo de crear y usar clases abstractas
abstract class Vehiculo{
  String color = "";
  String modelo = "";
  String marca = "";

  //Metodos abstractos
  void miComustible();
}
class Camion extends Vehiculo{

  @override
  void miComustible() {
    // TODO: implement miComustible
    print("Disel");
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