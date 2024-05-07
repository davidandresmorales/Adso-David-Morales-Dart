import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 04
  /*Hacer  un  algoritmo  que  imprima  el  nombre  de  un  artículo,  clave,  
  precio  original  y  su  precio  con descuento. El descuento lo hace en base 
  a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el 
  descuento en del 20% (solo existen dos claves). */
  // Definición Variables
  String nombreArticulo;
  int clave;
  double precioOriginal;
  double precioConDescuento;

  // Entrada Algoritmo
  print("Ingrese el nombre del artículo:");
  nombreArticulo = stdin.readLineSync()!;
  
  print("Ingrese la clave (1 o 2):");
  clave = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el precio original del artículo:");
  precioOriginal = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (clave == 1) {
    precioConDescuento = precioOriginal * 0.9;
  } else if (clave == 2) {
    precioConDescuento = precioOriginal * 0.8;
  } else {
    precioConDescuento = precioOriginal;
  }

  // Salida Algoritmo
  print("Nombre del artículo: $nombreArticulo");
  print("Clave: $clave");
  print("Precio original: \$${precioOriginal.toStringAsFixed(2)}");
  print("Precio con descuento: \$${precioConDescuento.toStringAsFixed(2)}");
}
