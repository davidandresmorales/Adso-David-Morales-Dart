import 'dart:io';

void main() {
  // David Andres Morales - EJER ciclos FOR 04
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 
  alumnos. Realizar un algoritmo para calcular la calificación promedio y 
  la calificación más baja de todo el grupo.*/
  // Definición de Variables
  double sumaCalificaciones = 0;
  double calificacionMinima = double.infinity; 
  int cantidadAlumnos = 40;

  // Entrada y Proceso
  print("promedio y calificación más baja de un grupo de $cantidadAlumnos alumnos.");
  for (int i = 1; i <= cantidadAlumnos; i++) {
    stdout.write("ingresa la calificación del alumno $i: ");
    double calificacion = double.parse(stdin.readLineSync()!);
    
    sumaCalificaciones += calificacion;
    
    if (calificacion < calificacionMinima) {
      calificacionMinima = calificacion;
    }
  }

  double promedio = sumaCalificaciones / cantidadAlumnos;

  // Salida
  print("\n¡Resultados!");
  print("Promedio: $promedio");
  print("Calificación mínima: $calificacionMinima");
}
