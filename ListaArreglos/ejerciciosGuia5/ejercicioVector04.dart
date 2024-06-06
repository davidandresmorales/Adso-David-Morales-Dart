import 'dart:io';

void main() {
  // Definición Variables
  List<int> numeros = [];
  List<int> numerosInverso = [];

  // Entrada Algoritmo
  print('Por favor, ingresa 8 números:');
  for (int i = 0; i < 8; i++) {
    print('Número ${i + 1}:');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  // Proceso Algoritmo
  for (int i = numeros.length - 1; i >= 0; i--) {
    numerosInverso.add(numeros[i]);
  }

  // Salida Algoritmo
  print('Vector original: $numeros');
  print('Vector inverso: $numerosInverso');
}