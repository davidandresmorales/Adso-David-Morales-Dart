import 'dart:io';

void main() {
  // Definición Variables
  List<int> numeros = [];
  int cantidadCeros = 0;
  int cantidadNegativos = 0;
  int cantidadPositivos = 0;
  int sumaCeros = 0;
  int sumaNegativos = 0;
  int sumaPositivos = 0;

  // Entrada Algoritmo
  print('Por favor, ingresa 15 números:');
  for (int i = 0; i < 15; i++) {
    print('Número ${i + 1}:');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  // Proceso Algoritmo
  for (int numero in numeros) {
    if (numero == 0) {
      cantidadCeros++;
      sumaCeros += numero;
    } else if (numero < 0) {
      cantidadNegativos++;
      sumaNegativos += numero;
    } else {
      cantidadPositivos++;
      sumaPositivos += numero;
    }
  }

  // Salida Algoritmo
  print('Cantidad de ceros: $cantidadCeros');
  print('Cantidad de negativos: $cantidadNegativos');
  print('Cantidad de positivos: $cantidadPositivos');
  print('Suma de ceros: $sumaCeros');
  print('Suma de negativos: $sumaNegativos');
  print('Suma de positivos: $sumaPositivos');
}