import 'dart:io';

void main() {
  // David Andres Morales - EJER ciclos FOR 03
  /*Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.*/
  // Definición de Variables
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  // Entrada Algoritmo
  print("Por favor, ingrese 20 números:");

  // Proceso Algoritmo
  for (int i = 0; i < 20; i++) {
    stdout.write("Número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos++;
    } else if (numero < 0) {
      negativos++;
    } else {
      ceros++;
    }
  }

  // Salida Algoritmo
  print("\nResultados:");
  print("Cantidad de números positivos: $positivos");
  print("Cantidad de números negativos: $negativos");
  print("Cantidad de ceros: $ceros");
}
