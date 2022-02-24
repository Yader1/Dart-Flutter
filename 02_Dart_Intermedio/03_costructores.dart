class Vehiculo{
  //Definimos las propiedades de la clase
  String color = "";
  String modelo = "";
  String marca = "";

  //Creamos el costructor
  Vehiculo(String marca, String modelo){
    this.modelo = modelo;
    this.marca = marca;
  }
  //Costructor de una linea
  //Vehiculo(this.marca, this.modelo);

  //Definimos los metodos
  void Arrcar(){
    print("Hola soy el auto $marca y estoy arrancando");
  }

  void CambiarValor(Vehiculo vehiculo){
    vehiculo.marca = "Mazda";
  }
}
void main(){
  //Instanciamos
  var auto = new Vehiculo("Ford", "Focus");
  auto.color = "Rojo";
  auto.modelo = "Bosbaguen";
  auto.marca = "Toyota";
 
  auto.Arrcar();

  auto.CambiarValor(auto);
  auto.Arrcar();
}