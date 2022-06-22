import 'package:firebase_auth/firebase_auth.dart';

class Autentication{
   //Instanciamos el servicio Auth
  final _auth = FirebaseAuth.instance;
  Future<UserCredential?> createUser({String email="", String password=""}) async{
    try{
    //Enviamos el email y el password a firebase Auth
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);  
    }catch(e){
      print(e);
    } 

    return null; 
  }

  Future<User?> getCurrentUser() async{
    try{
    //Enviamos el email y el password a firebase Auth
      return await _auth.currentUser!;  
    }catch(e){
      print(e);
    } 

    return null; 
  }

  //Login user
  Future<UserCredential?> loginUser({String email="", String password=""}) async{
    try{
    //Enviamos el email y el password a firebase Auth
      return await _auth.signInWithEmailAndPassword(email: email, password: password);  
    }catch(e){
      print(e);
    } 

    return null; 
  }

  //Cerrar sesion
  Future<void> singOut() async{
    try{
      return await _auth.signOut(); 
    }catch(e){
      print(e);
    } 

    return null; 
  }
}