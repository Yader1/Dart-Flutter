import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_firebase/src/model/auth_request.dart';

class Autentication {
  //Instanciamos el servicio Auth
  final _auth = FirebaseAuth.instance;
  Future<AuthenticationRequest?> createUser(
      {String email = "", String password = ""}) async {
    AuthenticationRequest authRequest = AuthenticationRequest();
    try {
      //Enviamos el email y el password a firebase Auth
      var user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (user != null) {
        authRequest.success = true;
      }
    } catch (e) {
      _mapErrorMessage(authRequest, e.hashCode.toString());
    }

    return authRequest;
  }

  Future<User?> getCurrentUser() async {
    try {
      //Enviamos el email y el password a firebase Auth
      return await _auth.currentUser!;
    } catch (e) {
      print(e);
    }

    return null;
  }

  //Login user
  Future<AuthenticationRequest> loginUser(
      {String email = "", String password = ""}) async {
    AuthenticationRequest authRequest = AuthenticationRequest();
    try {
      //Enviamos el email y el password a firebase Auth
      var user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user != null) {
        authRequest.success = true;
      }
    } catch (e) {
      _mapErrorMessage(authRequest, e.hashCode.toString());
    }

    return authRequest;
  }

  //Cerrar sesion
  Future<void> singOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e);
    }

    return null;
  }

  //Metodo para mapiar los errores de firebase
  void _mapErrorMessage(
      AuthenticationRequest authenticationRequest, String code) {
    switch (code) {
      case 'ERROR_USER_NOT_FOUND':
        authenticationRequest.errorMessage = "Usuario no encontrado";
        break;

      case 'ERROR_WRONG_PASSWORD':
        authenticationRequest.errorMessage = "Contraseña invalida";
        break;

      case 'ERROR_EMAIL_ALREADY_IN_USE':
        authenticationRequest.errorMessage = "El usuario ya esta registrado";
        break;

      case 'ERROR_NETWORK_REQUEST_FAILED':
        authenticationRequest.errorMessage = "Error de red";
        break;

      default:
        authenticationRequest.errorMessage = code;
        break;
    }
  }
}
