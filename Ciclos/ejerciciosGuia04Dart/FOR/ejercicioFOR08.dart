import 'dart:io';

void main() {
  // Definicion variables
  int numero;
  int factorial = 1;

  // Entrada algoritmo
  stdout.write("Ingrese un número para calcular su factorial: ");
  numero = int.parse(stdin.readLineSync()!);

  // Proceso algoritmo
  for (int i = 1; i <= numero; i++) { 
    factorial *= i;
  }

  // Salida algoritmo
  print("El factorial de $numero es: $factorial"); 
}
