import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 03
  /*En una fábrica de computadoras se planea ofrecer a los
  clientes un descuento que dependerá del número de computadoras
  que compre. Si las computadoras son menos de cinco se les dará
  un 10% de descuento sobre el total de la compra; si el número
  de computadoras es mayor o igual a cinco pero  menos  de  diez
  se  le  otorga  un  20%  de  descuento;  y  si  son  10  o  más
  se  les  da  un  40%  de descuento. El precio de cada computadora
  es de $1100000*/
  // ENTRADA ALGORITMO
  print('Ingrese el número de computadoras a comprar:');
  int cantidadComputadoras = int.parse(stdin.readLineSync()!);

  // DEFINICION VARIABLES
  double precioComputadora = 1100000;
  double totalCompra = precioComputadora * cantidadComputadoras;
  double descuento = 0;

  // PROCESO ALGORITMO
  if (cantidadComputadoras < 5) {
    descuento = totalCompra * 0.10; // 10% de descuento
  } else if (cantidadComputadoras < 10) {
    descuento = totalCompra * 0.20; // 20% de descuento
  } else {
    descuento = totalCompra * 0.40; // 40% de descuento
  }

  // SALIDA ALGORITMO
  double totalPagar = totalCompra - descuento;
  print('El total de la compra es: \$${totalCompra.toStringAsFixed(2)}');
  print('Se aplica un descuento de \$${descuento.toStringAsFixed(2)}.');
  print('El total a pagar es: \$${totalPagar.toStringAsFixed(2)}');
}
