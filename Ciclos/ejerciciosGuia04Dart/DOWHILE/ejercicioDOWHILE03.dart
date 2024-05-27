import 'dart:io';

void main(List<String> args) {
  // David Andres Morales Ejercicio - Do While - 3
  /*
  En la Cámara de Diputados se levanta una encuesta con todos los integrantes 
  con el fin de determinar qué porcentaje de los diputados está a favor 
  del Tratado de Libre Comercio, qué porcentaje está en contra y qué porcentaje 
  se abstiene de opinar. El programa debe preguntar si se desea continuar ingresando datos.
  */

  // Definición de variables
  int votosAFavor = 0;
  int votosEnContra = 0;
  int abstenciones = 0;
  String continuar;

  // Proceso
  do {
    print("Ingrese el número de diputados a favor del Tratado de Libre Comercio:");
    votosAFavor += int.parse(stdin.readLineSync()!);

    print("Ingrese el número de diputados en contra del Tratado de Libre Comercio:");
    votosEnContra += int.parse(stdin.readLineSync()!);

    print("Ingrese el número de diputados que se abstienen de opinar:");
    abstenciones += int.parse(stdin.readLineSync()!);

    print("¿Desea continuar ingresando datos? (S/N):");
    continuar = stdin.readLineSync()!;
  } while (continuar.toUpperCase() == "S");

  int totalDiputados = votosAFavor + votosEnContra + abstenciones;

  double porcentajeAFavor = (votosAFavor / totalDiputados) * 100;
  double porcentajeEnContra = (votosEnContra / totalDiputados) * 100;
  double porcentajeAbstenciones = (abstenciones / totalDiputados) * 100;

  print("\nResultados de la encuesta:");
  print("Porcentaje de diputados a favor del Tratado de Libre Comercio: ${porcentajeAFavor.toStringAsFixed(2)}%");
  print("Porcentaje de diputados en contra del Tratado de Libre Comercio: ${porcentajeEnContra.toStringAsFixed(2)}%");
  print("Porcentaje de diputados que se abstienen de opinar: ${porcentajeAbstenciones.toStringAsFixed(2)}%");
}
