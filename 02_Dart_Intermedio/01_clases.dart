class Vehiculo{
  //Definimos las propiedades de la clase
  String color = "";
  String modelo = "";
  String marca = "";

  void Arrcar(){
    print("Hola soy el auto $marca y estoy arrancando");
  }
}
void main(){
  //Instanciamos
  var auto = new Vehiculo();
  auto.color = "Rojo";
  auto.modelo = "Bosbaguen";
  auto.marca = "Toyota";

  auto.Arrcar();
}