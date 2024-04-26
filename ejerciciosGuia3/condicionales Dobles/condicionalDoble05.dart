import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 05
  /*Un  cliente  ordena  cierta  cantidad  de  brochas  de  cerda  y  rodillos;
  las  brochas  de  cerda  tienen  un  20%  de descuento y los rodillos un 15%
  de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad
  pedida  y  el  precio  unitario.  Además,  sise  paga  de  contado  todo  tiene  
  un  descuento  del  7%.  Elaborar  un programa que calcule y muestre en  pantalla 
  el costo total de la orden, tanto para el pago de contado como para el caso de pago 
  de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito 
  el usuario ingresa 2.*/
  print("Ingrese la cantidad de brochas de cerda:");
  int cantidadBrochas = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio unitario de las brochas de cerda:");
  double precioBrochas = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de rodillos:");
  int cantidadRodillos = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio unitario de los rodillos:");
  double precioRodillos = double.parse(stdin.readLineSync()!);
  print("Ingrese el método de pago (1 para contado, 2 para crédito):");
  int metodoPago = int.parse(stdin.readLineSync()!);
  double costoTotal;
  double costoBrochas = cantidadBrochas * precioBrochas * 0.80;
  double costoRodillos = cantidadRodillos * precioRodillos * 0.85;
  costoTotal = costoBrochas + costoRodillos;
  if (metodoPago == 1) {
    costoTotal *= 0.93; 
  }
  //SALIDA ALGORITMO
  print("El costo total de la orden es: \$${costoTotal.toStringAsFixed(2)}");
}
