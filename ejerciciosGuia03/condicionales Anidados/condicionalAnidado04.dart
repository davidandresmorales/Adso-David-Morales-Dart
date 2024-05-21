import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 05
  /*En  un  montallantas  se  ha  establecido  una  promoción  de  las  llantas  marca  
  “Ponchadas”,  dicha promoción consiste en lo siguiente:

  Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran 
  de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona 
  tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la 
  compra*/

  // Definición Variables
  int cantidadLlantas;
  double precioUnitario;
  double totalCompra;

  // Entrada Algoritmo
  print("Ingrese la cantidad de llantas que desea comprar:");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (cantidadLlantas < 5) {
    // Si se compran menos de cinco llantas
    precioUnitario = 90000;
  } else if (cantidadLlantas <= 10) {
    // Si se compran de cinco a diez llantas
    precioUnitario = 80000;
  } else {
    // Si se compran más de diez llantas
    precioUnitario = 70000;
  }

  totalCompra = cantidadLlantas * precioUnitario;

  // Salida Algoritmo
  print("El precio por cada llanta es: \$${precioUnitario.toStringAsFixed(2)}");
  print("El total de la compra es: \$${totalCompra.toStringAsFixed(2)}");
}
