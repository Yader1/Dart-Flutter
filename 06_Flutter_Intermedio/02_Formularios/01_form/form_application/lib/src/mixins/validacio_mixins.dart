class validationMixins{
  String? validateEmail(String value){
    if(value != null && !value.contains('@'))
        return "Email invalido"; 
    return null;
  }

  String? validatePassword(String value){
    if(value != null && value.length < 6)
        return "Contraseña invalido";
    return null;
  }
}