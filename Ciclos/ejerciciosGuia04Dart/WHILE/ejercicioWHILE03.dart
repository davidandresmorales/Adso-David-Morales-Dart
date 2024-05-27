import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - EJER ciclos While 3
  /*
  Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un  grupo  de  n  personas, 
  suponiendo que los datos son extraídos alumno por alumno.
  */
  // Definición de variables
  String genero;
  int contadorPersonas = 0, numeroPersonas, cantidadHombres = 0, cantidadMujeres = 0;
  
  // Entrada del algoritmo
  print("Ingrese el número de personas:");
  numeroPersonas = int.parse(stdin.readLineSync()!);
  
  // Proceso del algoritmo
  while (contadorPersonas < numeroPersonas) {
    print("Ingrese el género de la persona (M/F):");
    genero = stdin.readLineSync()!;
    if (genero == "M") {
      cantidadHombres++;
    } else if (genero == "F") {
      cantidadMujeres++;
    } else {
      print("Género no válido, por favor ingrese 'M' o 'F'.");
      continue; 
    }
    contadorPersonas++;
  }

  // Salida del algoritmo
  print("Hay $cantidadHombres hombres.");
  print("Hay $cantidadMujeres mujeres.");
}
