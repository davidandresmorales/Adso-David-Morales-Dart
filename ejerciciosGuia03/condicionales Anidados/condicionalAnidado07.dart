import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 07
  /*Leer 2 números; si son iguales que los multiplique, 
  si el primero es mayor que el segundo que los reste y
  si no que los sume.*/
  // Definición Variables
  int num1, num2, resultado;

  // Entrada Algoritmo
  print("Ingrese el primer número:");
  num1 = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el segundo número:");
  num2 = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (num1 == num2) {
    // Si son iguales que los multiplique
    resultado = num1 * num2;
  } else if (num1 > num2) {
    // Si el primero es mayor que el segundo que los reste
    resultado = num1 - num2;
  } else {
    // Si no que los sume
    resultado = num1 + num2;
  }

  // Salida Algoritmo
  print("El resultado es: $resultado");
}
