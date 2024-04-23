import 'dart:io';

void main() {
  //DEFINICIÓN vbles
  String? nombre;
  //nombre = "Juan";
  // ENTRADA ALGORITMO
  print("Ejemplo 01 - Entrada/Salida de datos");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  // SALIDA ALGORITMO
  print("Su nombre es $nombre");
}