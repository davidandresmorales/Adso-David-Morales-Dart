import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 03
  /*Hacer un algoritmo que calcule el total a pagar por la 
  compra de camisas. Si se compran tres camisas o mas se 
  aplica un descuento del 20%  sobre el total de la compra 
  y si son menos de tres camisas un descuento del 10%*/
  //DEFINICION VARIABLES
  double  descuento, cantCamisa, totalPagar, precioCamisa;
  //ENTRADA ALGORITMO
  print("Ingrese el precio de la camisa");
  precioCamisa = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de camisas que desea comprar");
  cantCamisa = double.parse(stdin.readLineSync()!);
  if (cantCamisa >= 3) {
    descuento = precioCamisa * 0.2;
    totalPagar = precioCamisa - descuento;
  } else {
    descuento = precioCamisa * 0.1;
    totalPagar = precioCamisa - descuento;
  }
  //SALIDA ALGORITMO
  print("El total a pagar es:$totalPagar");
}