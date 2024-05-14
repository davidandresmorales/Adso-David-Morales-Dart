import 'dart:io';

void main() {
  List<double> calificaciones = [];
  
  print("Por favor, ingrese las calificaciones de los 40 alumnos:");
  
  for (var i = 0; i < 40; i++) {
    stdout.write("Calificación del alumno ${i + 1}: ");
    var calificacion = double.parse(stdin.readLineSync()!);
    calificaciones.add(calificacion);
  }

  // Calcular calificación promedio
  double sumaCalificaciones = 0;
  for (var calificacion in calificaciones) {
    sumaCalificaciones += calificacion;
  }
  double promedio = sumaCalificaciones / calificaciones.length;

  // Encontrar calificación más baja
  double calificacionMinima = calificaciones[0];
  for (var calificacion in calificaciones) {
    if (calificacion < calificacionMinima) {
      calificacionMinima = calificacion;
    }
  }

  print("\nResultados:");
  print("La calificación promedio del grupo es: $promedio");
  print("La calificación más baja del grupo es: $calificacionMinima");
}
