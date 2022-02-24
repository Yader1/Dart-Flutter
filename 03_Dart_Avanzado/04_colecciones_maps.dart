void main(){
  var groups = {
    "Perro": "Animal",
    "Bus": "Vehiculo"
  };

  groups.forEach((key, value) => print(key));
  print(groups.keys);
  print(groups.values);
}