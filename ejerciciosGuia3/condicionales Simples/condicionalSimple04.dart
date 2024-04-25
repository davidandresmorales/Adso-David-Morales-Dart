import 'dart:io';


void main(List<String> args) {
  /*Hacer  un  algoritmo  que  imprima  el  nombre  de  un  artículo,  clave,
  precio  original  y  su  precio  con descuento. El descuento lo hace en base a la clave, 
  si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).
  */
  //DEFINICION VARIABLES
  String nombreArticulo;
  int clave;
  double precioFinal, precio; 
  double descuento;
  //ENTRADA ALGORITMO
  print("Ingrese el nombre del articulo");
  nombreArticulo = stdin.readLineSync()!;
  print("Ingrese la clave del articulo (1 o 2): "); 
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio original del articulo: ");
  precio = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  descuento = 0;
  if (clave == 1) {
    descuento = precio * 0.10;
  }
  if (clave == 2) {
    descuento = precio * 0.20;
  }
  precioFinal = precio - descuento;
  //SALIDA ALGORITMO
  print("Nombre del articulo: $nombreArticulo");
  print("Clave del articulo: $clave");
  print("Precio: $precio");
  print("Precio con descuento: $precioFinal");
}