import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - EJER ciclos While 6

  /*
  Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */

  // Definición de variables
  int numeroAlumnos, contadorAlumnos = 0, cantidadHombres = 0, cantidadMujeres = 0, sumaEdadesHombres = 0, sumaEdadesMujeres = 0, edad;
  double promedioTotal = 0, sumaTotalEdades = 0, promedioHombres = 0, promedioMujeres = 0;
  String genero;

  // Entrada del algoritmo
  print("Ingrese el número de alumnos:");
  numeroAlumnos = int.parse(stdin.readLineSync()!);

  // Proceso del algoritmo
  while (contadorAlumnos < numeroAlumnos) {
    print("Ingrese la edad del alumno ${contadorAlumnos + 1}:");
    edad = int.parse(stdin.readLineSync()!);
    
    print("Ingrese el género del alumno ${contadorAlumnos + 1} (M/F):");
    genero = stdin.readLineSync()!;

    if (genero == "M") {
      sumaEdadesHombres += edad;
      cantidadHombres++;
    } else if (genero == "F") {
      sumaEdadesMujeres += edad;
      cantidadMujeres++;
    }
    
    sumaTotalEdades += edad;
    contadorAlumnos++;
  }

  promedioTotal = sumaTotalEdades / numeroAlumnos;
  if (cantidadHombres > 0) {
    promedioHombres = sumaEdadesHombres / cantidadHombres;
  }
  if (cantidadMujeres > 0) {
    promedioMujeres = sumaEdadesMujeres / cantidadMujeres;
  }

  // Salida del algoritmo
  print("El promedio de edades del grupo es: $promedioTotal");
  print("El promedio de edades de los hombres es: $promedioHombres");
  print("El promedio de edades de las mujeres es: $promedioMujeres");
}
