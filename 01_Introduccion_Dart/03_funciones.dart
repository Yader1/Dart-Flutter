void main(){
  //Invocamos la Funciones
  saludo("Yader");
  saludo3("Onell", "Mejia", 21);
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
void saludo3(String nombre, [String apellido, num edad]){
  if(apellido != null && edad != null){
    print("Bienvenido $nombre $apellido, edad $edad");
  }else{
    print("Bienvenido $nombre");
  }
}