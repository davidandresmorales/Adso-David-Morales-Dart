import 'dart:io';

void main(List<String> args) {
  //Palíndrome
  //ANA - OSO - ARENERA - ANITALAVATINA
  String? palabra;
  List<String> VectPalindrome = [];
  List<String> VectPalabra = [];

  print("Ingrese la palabra para comprobar Palíndrome");
  palabra = stdin.readLineSync()!;
  // se recorre cada letra de la palabra y se envia al Vectorpalabra
  for (var i = 0; i < palabra.length; i++) {
    VectPalabra.add(palabra.toUpperCase()[i]);
    VectPalindrome.add(palabra.toUpperCase()[palabra.length-i-1]);
  }
  print(VectPalabra);
  print(VectPalindrome);
  if (VectPalabra.toString() == VectPalindrome.toString()) {
    print("Es palíndrome");
  } else {
    print("No es Palíndrome");
  }
}