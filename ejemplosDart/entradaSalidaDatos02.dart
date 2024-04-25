import 'dart:io';

void main() {
  print("Ejemplo 02 - Entrada/Salida de datos");
  // DEFINICIÓN vbles
  int num1, num2, suma;
  // ENTRADA ALGORITMO
  print("Ingrese el valor número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor número 2");
  num2 = int.parse(stdin.readLineSync()!);
  // PROCESO ALGORITMO
  suma = num1 + num2;
  // SALIDA ALGORITMO
  print("La suma es: $suma");
}
