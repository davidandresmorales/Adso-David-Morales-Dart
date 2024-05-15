import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 02
  /*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. 
  Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número 
  de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :
  Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
  Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
  Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
  Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea. 
  •Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
  •Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.
  •Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero. Diseñe  el  programa  que  
  lea  el  nombre  del  granjero,  el  tipo  de  fumigación  solicitada  (1-4)  y  el  número  de hectáreas a fumigar. Se debe imprimir el nombre del granjero y la cuenta total.

 */
  // Definición de variables
  String nombre;
  int tipoFumigacion;
  double numHectareas;
  double costoPorHectarea;
  double costoTotal;

  // Entrada Algoritmo
  print("Ingrese el nombre del granjero:");
  nombre = stdin.readLineSync() ?? "";

  print("Ingrese el tipo de fumigación (1-4):");
  tipoFumigacion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("Ingrese el número de hectáreas a fumigar:");
  numHectareas = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  // Proceso algoritmo
  switch (tipoFumigacion) {
    case 1:
      costoPorHectarea = 50000;
      break;
    case 2:
      costoPorHectarea = 70000;
      break;
    case 3:
      costoPorHectarea = 80000;
      break;
    case 4:
      costoPorHectarea = 190000;
      break;
    default:
      print("Tipo de fumigación no válido.");
      return;
  }

  costoTotal = costoPorHectarea * numHectareas;

  if (numHectareas > 100) {
    costoTotal *= 0.95; 
  }

  if (costoTotal > 1000000) {
    double descuento = (costoTotal - 1000000) * 0.10;
    costoTotal -= descuento;
  }

  // Salida algoritmo
  print("Nombre del granjero: $nombre");
  print("Cuenta total: \$${costoTotal.toStringAsFixed(2)}");
}
