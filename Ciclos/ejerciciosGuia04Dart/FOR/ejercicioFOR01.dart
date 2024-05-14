import 'dart:io';
// David Andres morales - Ejer FOR 1
/*
Calcular el promedio de un alumno que tiene 7 calificaciones en la 
materia de Diseño Estructurado de Algoritmos.
 */

double calcularPromedio() {
  double totalCalificaciones = 0;
  print("Por favor, ingrese las 7 calificaciones del alumno:");
  for (var i = 0; i < 7; i++) {
    stdout.write("Calificación ${i + 1}: ");
    var calificacion = double.parse(stdin.readLineSync()!);
    totalCalificaciones += calificacion;
  }
  var promedio = totalCalificaciones / 7;
  return promedio;
}

void main() {
  var promedioAlumno = calcularPromedio();
  print("El promedio del alumno en Diseño Estructurado de Algoritmos es: $promedioAlumno");
}
