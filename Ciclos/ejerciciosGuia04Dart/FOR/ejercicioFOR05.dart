import 'dart:io';

void main() {
  // David Andres Morales - EJER ciclos FOR 05
  /*Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.  
  Imprimir  el  multiplicando,  el multiplicador y el producto.*/
  // Definición de Variables
  int numero;
  int producto;

  // Entrada Algoritmo
  stdout.write("Ingrese un número para calcular su tabla de multiplicar: ");
  numero = int.parse(stdin.readLineSync()!);
  
  // Proceso Algoritmo y Salida Algoritmo
  print("La tabla de multiplicar del $numero es:");
  for (int i = 1; i <= 10; i++) {
    producto = numero * i;
    print("$numero x $i = $producto");
  }
}
