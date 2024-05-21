import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 01
  /*Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.*/
  // Definición Variables
  int numero1, numero2;

  // Entrada Algoritmo
  print("Ingrese el primer número:");
  numero1 = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el segundo número:");
  numero2 = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  int menor, mayor;
  if (numero1 < numero2) {
    menor = numero1;
    mayor = numero2;
  } else {
    menor = numero2;
    mayor = numero1;
  }

  // Salida Algoritmo
  print("Los números en forma ascendente son: $menor, $mayor");
}
