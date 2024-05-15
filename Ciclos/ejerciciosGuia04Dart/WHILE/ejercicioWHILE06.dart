import 'dart:io';

void main() {
  // Solicitar el número total de alumnos
  stdout.write("Ingrese el número total de alumnos: ");
  var totalAlumnos = int.parse(stdin.readLineSync()!);

  // Inicializar contadores para hombres, mujeres y el grupo en general
  var hombres = 0;
  var mujeres = 0;
  var sumaEdadesHombres = 0;
  var sumaEdadesMujeres = 0;
  var sumaEdadesTotal = 0;

  // Inicializar el contador de alumnos
  var contadorAlumnos = 0;

  // Calcular el promedio de edades de hombres, mujeres y del grupo
  while (contadorAlumnos < totalAlumnos) {
    stdout.write("Ingrese el género del alumno ${contadorAlumnos + 1} (H para hombre, M para mujer): ");
    var genero = stdin.readLineSync()!.toUpperCase();

    // Solicitar la edad del alumno
    stdout.write("Ingrese la edad del alumno ${contadorAlumnos + 1}: ");
    var edad = int.parse(stdin.readLineSync()!);

    // Verificar el género del alumno y sumar la edad correspondiente
    if (genero == 'H') {
      hombres++;
      sumaEdadesHombres += edad;
    } else if (genero == 'M') {
      mujeres++;
      sumaEdadesMujeres += edad;
    } else {
      print("Género no válido. Por favor, ingrese H para hombre o M para mujer.");
      continue; // Saltar al siguiente ciclo si el género no es válido
    }

    // Sumar la edad al grupo en general
    sumaEdadesTotal += edad;

    // Incrementar el contador de alumnos
    contadorAlumnos++;
  }

  // Calcular el promedio de edades de hombres, mujeres y del grupo
  var promedioEdadHombres = hombres > 0 ? sumaEdadesHombres / hombres : 0;
  var promedioEdadMujeres = mujeres > 0 ? sumaEdadesMujeres / mujeres : 0;
  var promedioEdadTotal = totalAlumnos > 0 ? sumaEdadesTotal / totalAlumnos : 0;

  // Mostrar el resultado
  print("\nPromedio de edades:");
  print("Hombres: $promedioEdadHombres");
  print("Mujeres: $promedioEdadMujeres");
  print("Grupo total: $promedioEdadTotal");
}
