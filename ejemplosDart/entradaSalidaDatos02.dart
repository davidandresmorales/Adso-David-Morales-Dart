import 'dart:io';

void main() {
  print("Ejemplo 02 - Entrada/Salida de datos");
  // DEFINICIÓN vbles
  int num1, num2;
  // ENTRADA ALGORITMO
  print("Ingrese el valor número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor número 2");
  num2 = int.parse(stdin.readLineSync()!);
}
