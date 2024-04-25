import 'dart:io'; 

void main(List<String> args) {
  //David Andres Morales - EJE CONDICIONAL DOBLE 01
  /*Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.*/
  //DEFINICION VARIABLES
  double num1, num2;
  //ENTRADA ALGORITMO
  print("Ingrese el numero 1 y 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  //PROCESO y SALIDA 
  if (num1 > num2) {
    print("$num2 $num1");
  } else {
    print("$num1 $num2");
  }
}