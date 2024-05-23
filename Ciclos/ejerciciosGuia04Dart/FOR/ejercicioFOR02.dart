import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - FOR 02

  /*
  Leer 10 números e imprimir solamente los números positivos
  */

  // DECLARACION DE VARIABLES
  int numero;

  // Proceso y salida del Algoritmo
  for (int i = 0; i < 10; i++) {
    print("Ingresa los números:");
    numero = int.parse(stdin.readLineSync()!);
    if (numero >= 0) {
      print(numero);
    }
  }
}
