import 'dart:io';

void main() {
  double largo, ancho, PrecioM2, PrecioTerreno;
  double areaTerreno;
  //ENTRADA ALGORITMO
  print("Ingrese el largo del terreno");
  largo = double.parse(stdin.readLineSync()!);
  print("Ingrese el ancho del terreno");
  ancho = double.parse(stdin.readLineSync()!);
  print("ingrese el precio por metro cuadrado");
  PrecioM2 = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  areaTerreno = largo * ancho;
  PrecioTerreno = areaTerreno * PrecioM2;
  if (areaTerreno > 400) {
    descuento = PrecioTerreno * 0.1;
    PrecioTerreno = PrecioTerreno - descuento;
    print("El descuento es: $descuento");
  }
  //SALIDA ALGORITMO
  print("El precio del terreno es: $PrecioTerreno");
}