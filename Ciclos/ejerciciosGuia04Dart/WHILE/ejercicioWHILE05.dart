import 'dart:io';

void main() {
  // Solicitar el número total de alumnos
  stdout.write("Ingrese el número total de alumnos: ");
  var totalAlumnos = int.parse(stdin.readLineSync()!);

  var sumaCalificaciones = 0.0;
  var contadorAlumnos = 0;

  while (contadorAlumnos < totalAlumnos) {
    stdout.write("Ingrese la calificación del alumno ${contadorAlumnos + 1}: ");
    var calificacion = double.parse(stdin.readLineSync()!);
    
    if (calificacion >= 0 && calificacion <= 10) {
      sumaCalificaciones += calificacion;
      contadorAlumnos++;
    } else {
      print("La calificación ingresada no es válida. Por favor, ingrese una calificación entre 0 y 10.");
    }
  }

  var promedio = sumaCalificaciones / totalAlumnos;

  // Mostrar el resultado
  print("\nEl promedio de calificaciones del grupo de $totalAlumnos alumnos es: $promedio");
}
