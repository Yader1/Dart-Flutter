/**
 * Flujos de control
 * if Else
 * Switch
 * For Loops
 * While
 */

//if Else
void main(){
  bool v1 = true;
  bool v2 = false;

  if(v1 == v2){
    print("Si es genial");
  }else{
    print("No es genial");
  }

  //if de manera simplificada
  String resultados = v1 ? "Si es verdadero" : "Lo contrario";
}

//Switch
void main2(){
  var dia = 2;

  switch(dia){
    case 1:
      print("Lunes");
      break;

    case 2:
      print("Martes");
      break;

    default:
      print("Dia no encontrado");
      /**
       * Una manera correcta de lanzar excepciones 
       * en Dart es utilizando la sentencia throw
       */
      throw("Dia no encontrado");
      break;
  }
}

//For Loop
void main3(){
  for(int i = 0; i < 10; i++){
    print("Iteracion $i");
  }
}

//While/Do Loop
void main4(){
  int maxN = 10;
  int index = 0;

  while(index < maxN){
    print("Imprimiendo indice $index");
    index++;
  }

  do {
     print("Imprimiendo indice $index");
     index++;
  } while (index < maxN);
}