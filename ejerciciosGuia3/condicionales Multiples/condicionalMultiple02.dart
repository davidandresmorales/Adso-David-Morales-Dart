import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL MULTIPLE 02

  // Definición de variables
  String nombre;
  int tipoFumigacion;
  double numHectareas;
  double costoPorHectarea;
  double costoTotal;

  // Entrada de datos
  print("Ingrese el nombre del granjero:");
  nombre = stdin.readLineSync() ?? "";

  print("Ingrese el tipo de fumigación (1-4):");
  tipoFumigacion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("Ingrese el número de hectáreas a fumigar:");
  numHectareas = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  // Proceso del algoritmo
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

  // Salida del algoritmo
  print("Nombre del granjero: $nombre");
  print("Cuenta total: \$${costoTotal.toStringAsFixed(2)}");
}
