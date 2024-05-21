import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 05
  /*Una frutería ofrece las manzanas con descuento según la siguiente tabla
  NUM. DE KILOS COMPRADOS  |  % DESCUENTO
  0 -2                     |  0
  2.01 -5                  |  10
  5.01 -10                 |  15
  10.01 en adelante        |  20
  Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el 
  kilo vale $1300*/

  //DEFINICION VARIABLES
  double kilos, descuento, totalPagar;
  double precioKilo = 1300;
  //ENTRADA ALGORITMO
  stdout.write("Ingrese la cantidad de kilos a comprar: ");
  kilos = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  totalPagar = precioKilo * kilos;
  if (kilos <= 2) {
    print("no de obtuvo descuento");
    descuento = 0;
  }else if (kilos <= 5) {
    print("Se obtiene un descuento del 10%");
    descuento = totalPagar * 0.10;
  } else if (kilos <= 10) {
    descuento = totalPagar * 0.15;
  } else {
    descuento = totalPagar * 0.20;
  }
  totalPagar = totalPagar - descuento;
  //SALIDA ALGORITMO
  print("El total a pagar es: $totalPagar");
}
