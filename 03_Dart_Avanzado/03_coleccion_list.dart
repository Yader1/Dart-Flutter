class Persona {
  String persona="";
}
void main(){
  var list = [1, 6, 7, 32, 45];

  print("list.length");

  for(int i=0; i < list.length; i++){
    print("El valor del indice $i es " +list[i].toString());
  }

  //Para una lista de tipo string
  var onlyString = new List<String>();
  onlyString.add("Hola"); //add -> sirve para agregar un evento
  for(int i=0; i < onlyString.length; i++){
    print(onlyString[i].toString());
  }

  //Lista de tipo objeto
  var listPersona = new List<Persona>();
  var persona1 = new Persona();
  persona1.persona = "Yader";

  for(var x in listPersona){
    print(x.persona);
  }

}