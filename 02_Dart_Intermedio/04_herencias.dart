class Vehiculo{
  String color = "";
  String modelo = "";
  String marca = "";

  //Herencia de Costructor
  Vehiculo(this.modelo, this.marca);

  void MostrarVehiculo(){
    print("Marca: $marca, Modelo $modelo, color: $color");
  }

  //Ejemplo de como sobreescribir metodos
  void QueVehiculoSoy(){
    print("Aun no estoy implimentado");
  }
}

//Clases que van ha heredar
class Camion extends Vehiculo{
  //Cunado la clase padre tiene su costructor
  Camion(String modelo, String marca) : super(modelo, marca);
  //Para sobreescribir el metodo se utliza @override
  @override
  void QueVehiculoSoy(){
    print("Soy un Camion");
  }
}

class Auto extends Vehiculo{
  Auto(String modelo, String marca) : super(modelo, marca);
}

void main(){
  //Instanciamos
  var camion = new Camion("Volvo","Truck");
  camion.color = "Blanco";

  camion.MostrarVehiculo();
  camion.QueVehiculoSoy();

  var auto = new Camion("Focus", "Ford");
  auto.color = "Azul";

  auto.MostrarVehiculo();
  camion.QueVehiculoSoy();
}