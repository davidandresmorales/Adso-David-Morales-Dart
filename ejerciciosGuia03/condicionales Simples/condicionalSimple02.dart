import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 02
  /*La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone 
  en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al 
  departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule 
  e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y 
  precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un 
  descuento del 10%. */
  // Definición Variables
  double largo;
  double ancho;
  double precioPorMetroCuadrado;
  double area;
  double precioTotal;

  // Entrada Algoritmo
  print("Ingrese el largo del terreno en metros:");
  largo = double.parse(stdin.readLineSync()!);

  print("Ingrese el ancho del terreno en metros:");
  ancho = double.parse(stdin.readLineSync()!);

  print("Ingrese el precio por metro cuadrado:");
  precioPorMetroCuadrado = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  area = largo * ancho;
  if (area > 400) {
    precioTotal = area * precioPorMetroCuadrado * 0.9; 
  } else {
    precioTotal = area * precioPorMetroCuadrado;
  }

  // Salida Algoritmo
  print("El precio total del terreno es: \$${precioTotal.toStringAsFixed(2)}");
}
