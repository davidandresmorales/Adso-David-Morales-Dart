import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 04
  /*En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá 
  del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 
  10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a 
  cinco pero  menos  de  diez  se  le  otorga  un  20%  de  descuento;  y  si  son  10  o  más  
  se  les  da  un  40%  de descuento. El precio de cada computadora es de $1100000*/
  // Definición Variables
  int cantidadComputadoras;
  double precioUnitario = 1100000;
  double descuento;
  double totalCompra;

  // Entrada Algoritmo
  print("Ingrese la cantidad de computadoras que desea comprar:");
  cantidadComputadoras = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (cantidadComputadoras < 5) {
    // Si se compran menos de cinco computadoras
    descuento = 0.10;
  } else if (cantidadComputadoras < 10) {
    // Si se compran de cinco a nueve computadoras
    descuento = 0.20;
  } else {
    // Si se compran diez o más computadoras
    descuento = 0.40;
  }

  totalCompra = cantidadComputadoras * precioUnitario * (1 - descuento);

  // Salida Algoritmo
  print("El precio unitario de cada computadora es: \$${precioUnitario.toStringAsFixed(2)}");
  print("El descuento aplicado es del ${descuento * 100}%");
  print("El total de la compra es: \$${totalCompra.toStringAsFixed(2)}");
}
