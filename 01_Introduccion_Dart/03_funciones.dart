void main(){
  //Invocamos la Funciones
  saludo("Yader");
  saludo3("Onell", "Mejia", 21);
  saludo4(nombre:"Yader");
}

//Funciones

//Sin retorno
void saludo(String nombre){
  print("Bienvenido $nombre");
}
//De manera mas simplificada
void saludo2(String nombre) => print("Bienvenido $nombre");

/**
 * Funciones con parametros
 * opcionales posicionales
 */
void saludo3(String nombre, [String apellido = "", num edad = 0]){
  if(apellido != null && edad != null){
    print("Bienvenido $nombre $apellido, edad $edad");
  }else{
    print("Bienvenido $nombre");
  }
}
//Parametros opcionales nombrados
void saludo4({String nombre = "Anonymous", String apellidos = ""}){
  var saludo4 = new StringBuffer("Bienvenido a Dart");

  //Añadimos los datos al saludo
  if(nombre != null){
    saludo4.write("$nombre");
  }
  if(apellidos != null){
    saludo4.write("$apellidos");
  }

  print(saludo4.toString());
}