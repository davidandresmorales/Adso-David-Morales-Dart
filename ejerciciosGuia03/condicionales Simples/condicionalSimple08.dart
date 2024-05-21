import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 08
  /*Dada la duración en minutos de una llamada calcular el costo, considerando:
  •Hasta tres minutos el costo es 600
  •Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
  */
  // Definición Variables
  int duracionLlamada;
  double costoLlamada;

  // Entrada Algoritmo
  print("Ingrese la duración en minutos de la llamada:");
  duracionLlamada = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (duracionLlamada <= 3) {
    costoLlamada = 600;
  } else {
    costoLlamada = 600 + (duracionLlamada - 3) * 150;
  }

  // Salida Algoritmo
  print("El costo de la llamada es: \$${costoLlamada.toStringAsFixed(2)}");
}
