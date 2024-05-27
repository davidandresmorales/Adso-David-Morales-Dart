import 'dart:io';

void main() {
  // David Andres Morales - EJER ciclos While 8
  /*Encontrar el mayor valor de un conjunto de n números dados.*/
  // Definición variables
  int n;
  int contador = 1;
  int mayor = 0;
  
  // Entrada Algoritmo
  print("Ingrese la cantidad de números:");
  n = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  while (contador <= n) {
    print("Ingrese el número $contador:");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > mayor) {
      mayor = numero;
    }

    contador++;
  }

  // Salida algoritmo
  print("El mayor valor ingresado es: $mayor");
}
