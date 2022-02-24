class Vehiculo{
  String color = "";
  String modelo = "";
  String marca = "";

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
  //Para sobreescribir el metodo se utliza @override
  @override
  void QueVehiculoSoy(){
    print("Soy un Camion");
  }
}

class Auto extends Vehiculo{

}

void main(){
  //Instanciamos
  var camion = new Camion();
  camion.color = "Blanco";
  camion.marca = "Truck";
  camion.marca = "Volvo";

  camion.MostrarVehiculo();
  camion.QueVehiculoSoy();

  var auto = new Camion();
  auto.color = "Azul";
  auto.marca = "Focus";
  auto.marca = "Ford";

  auto.MostrarVehiculo();
  camion.QueVehiculoSoy();
}