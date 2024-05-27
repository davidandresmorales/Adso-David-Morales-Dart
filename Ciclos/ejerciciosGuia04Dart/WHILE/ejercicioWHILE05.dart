import 'dart:io';

void main(List<String> args) {
  // David Andres Morales - EJER ciclos While 5

  /*
  Obtener el promedio de calificaciones de un grupo de n alumnos.
  */

  // Definición de variables
  int numeroAlumnos, contadorAlumnos = 0;
  double promedio = 0, sumaCalificaciones = 0, calificacion;

  // Entrada del algoritmo
  print("Ingrese el número de alumnos:");
  numeroAlumnos = int.parse(stdin.readLineSync()!);

  // Proceso del algoritmo
  while (contadorAlumnos < numeroAlumnos) {
    print("Ingrese la calificación del alumno ${contadorAlumnos + 1}:");
    calificacion = double.parse(stdin.readLineSync()!);
    sumaCalificaciones += calificacion;
    contadorAlumnos++;
  }
  
  promedio = sumaCalificaciones / numeroAlumnos;

  // Salida del algoritmo
  print("El promedio de calificaciones es: $promedio");
}
