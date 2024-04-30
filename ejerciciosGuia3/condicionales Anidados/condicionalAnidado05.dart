import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 05
  /*Una frutería ofrece las manzanas con descuento según la siguiente tabla*/
  // ENTRADA DEL ALGORITMO
  print("¿Cuántos kilos de manzanas desea comprar?");
  double kilosComprados = double.parse(stdin.readLineSync()!);

  // DEFINICIÓN DE VARIABLES
  double precioPorKilo = 1300;
  double totalPagar;
  double descuento = 0;

  // PROCESO DEL ALGORITMO
  if (kilosComprados <= 2) {
    totalPagar = kilosComprados * precioPorKilo;
  } else if (kilosComprados <= 5) {
    descuento = 0.10;
  } else if (kilosComprados <= 10) {
    descuento = 0.15;
  } else {
    descuento = 0.20;
  }

  totalPagar = kilosComprados * precioPorKilo * (1 - descuento);

  // SALIDA DEL ALGORITMO
  print("El total a pagar es de: \$${totalPagar.toStringAsFixed(2)}");
}
