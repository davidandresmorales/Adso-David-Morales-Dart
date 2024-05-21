import 'dart:io';

void main(List<String> args) {

  // David Andres Morales - FOR 01
  /* Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño 
  Estructurado de Algoritmos.*/

  // Definicion de variables
  double Promedio, Nota, Suma;

  // Proceso Algoritmo
  Suma = 0.0;
  for (int i = 0; i < 7; i++) {
    print("Digite la nota " + (i + 1).toString() + ":");
    Nota = double.parse(stdin.readLineSync()!);
    Suma += Nota;
  }
  Promedio = Suma / 7;

  // Salida Algoritmo
  print("El promedio fue: $Promedio");
}

