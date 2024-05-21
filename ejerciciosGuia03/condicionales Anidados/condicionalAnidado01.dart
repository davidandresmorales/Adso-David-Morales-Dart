import 'dart:io';

void main(List<String> args) {
   //David Andres Morales -  CONDICIONAL ANIDADO 01
   /*Dado tres números calcular el mayor*/ 
  // DEFINICION VARIABLES
  int numero1, numero2, numero3, mayor;

  // ENTRADA ALGORITMO
  print('Ingrese el primer número:');
  numero1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  numero2 = int.parse(stdin.readLineSync()!);

  print('Ingrese el tercer número:');
  numero3 = int.parse(stdin.readLineSync()!);

  // PROCESO ALGORITMO
  if (numero1 > numero2) {
    if (numero1 > numero3) {
      mayor = numero1;
    } else {
      mayor = numero3;
    }
  } else {
    if (numero2 > numero3) {
      mayor = numero2;
    } else {
      mayor = numero3;
    }
  }

  // SALIDA ALGORITMO
  print('El mayor de los tres números es: $mayor');
}


