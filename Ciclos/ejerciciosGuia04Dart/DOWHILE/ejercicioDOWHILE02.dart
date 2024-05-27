import 'dart:io';

void main(List<String> args) {
  // David Andres Morales Ejercicio - Do While - 2
  /*Un alumno de la clase de lógica matemática desea desarrollar un algoritmo 
  y diagrama de flujo en el cual  introduzca  un  número  entero  positivo  e  
  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.*/
  // Definición de variables
  int numero, digito, numeroInvertido = 0;
  String continuar;

  do {
    // Entrada
    stdout.write("Ingrese un número entero positivo: ");
    numero = int.parse(stdin.readLineSync()!);

    // Proceso 
    numeroInvertido = 0; 
    int numeroOriginal = numero; 
    while (numero > 0) {
      digito = numero % 10;
      numeroInvertido = numeroInvertido * 10 + digito;
      numero ~/= 10;
    }

    // Salida
    print("El número $numeroOriginal invertido es: $numeroInvertido");

    stdout.write("¿Desea ingresar otro número? (S/N): ");
    continuar = stdin.readLineSync()!;
  } while (continuar.toUpperCase() == 'S');
}
