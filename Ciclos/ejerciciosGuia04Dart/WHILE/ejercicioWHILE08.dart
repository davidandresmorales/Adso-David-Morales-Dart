import 'dart:io';

void main(List<String> args) {
  /*
  Encontrar el menor valor de un conjunto de n números dados.
  */

  // Definición de variables
  int cantidadNumeros, menorValor, contadorNumeros = 0, numeroActual;

  // Entrada del algoritmo
  print("Ingrese la cantidad de números:");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  menorValor = 1500;

  // Proceso del algoritmo
  while (contadorNumeros < cantidadNumeros) {
    print("Ingrese el número ${contadorNumeros + 1}:");
    numeroActual = int.parse(stdin.readLineSync()!);

    if (numeroActual < menorValor) {
      menorValor = numeroActual;
    }

    contadorNumeros++;
  }

  // Salida del algoritmo
  print("El número menor es: $menorValor");
}
