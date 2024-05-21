import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 06
  /*El gobierno colombiano desea reforestar un bosque que
  mide determinado número de hectáreas. Si la superficie del
  terreno excede a 1 millón de metros cuadrados, entonces decidirá
  sembrar de la sig. manera:*/
  // DEFINICION VARIABLES
  double hectareas, metrosCuadrados, porcentajePinos, porcentajeRobles, porcentajeCedros;
  int numPinos, numRobles, numCedros;

  // ENTRADA ALGORITMO
  print('Ingrese la cantidad de hectáreas del bosque:');
  hectareas = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  metrosCuadrados = hectareas * 10000;
  if (metrosCuadrados > 1000000) {
    porcentajePinos = 0.70;
    porcentajeRobles = 0.20;
    porcentajeCedros = 0.10;
  } else {
    porcentajePinos = 0.50;
    porcentajeRobles = 0.30;
    porcentajeCedros = 0.20;
  }
  numPinos = (metrosCuadrados ~/ 10 * porcentajePinos).toInt();
  numRobles = (metrosCuadrados ~/ 15 * porcentajeRobles).toInt();
  numCedros = (metrosCuadrados ~/ 18 * porcentajeCedros).toInt();

  // SALIDA ALGORITMO
  print('Número de pinos a sembrar: $numPinos');
  print('Número de robles a sembrar: $numRobles');
  print('Número de cedros a sembrar: $numCedros');
}
