import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 03
  /*Hacer un algoritmo que calcule el total a pagar por la compra de camisas. 
  Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la 
  compra y si son menos de tres camisas un descuento del 10%*/
  
  // Definición Variables
  int cantidadCamisas;
  double precioUnitario = 0.0;
  double descuento = 0.0;
  double totalCompra;

  // Entrada Algoritmo
  print("Ingrese la cantidad de camisas que desea comprar:");
  cantidadCamisas = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (cantidadCamisas >= 3) {
    // Si se compran tres camisas o más
    descuento = 0.20;
  } else {
    // Si se compran menos de tres camisas
    descuento = 0.10;
  }

  precioUnitario = 25000.0; // Precio unitario de cada camisa
  totalCompra = cantidadCamisas * precioUnitario * (1 - descuento);

  // Salida Algoritmo
  print("El precio unitario de cada camisa es: \$${precioUnitario.toStringAsFixed(2)}");
  print("El descuento aplicado es del ${(descuento * 100).toStringAsFixed(0)}%");
  print("El total a pagar por la compra de camisas es: \$${totalCompra.toStringAsFixed(2)}");
}
