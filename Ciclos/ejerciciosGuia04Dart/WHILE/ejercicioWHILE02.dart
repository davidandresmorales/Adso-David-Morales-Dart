import 'dart:io';

void main() {
  // Solicitar el número de obreros
  stdout.write("Ingrese el número de obreros: ");
  var numObreros = int.parse(stdin.readLineSync()!);

  // Inicializar la variable para contar los obreros
  var contadorObreros = 1;

  // Calcular el salario de cada obrero
  while (contadorObreros <= numObreros) {
    stdout.write("\nHoras trabajadas por el obrero $contadorObreros: ");

    // Leer las horas trabajadas por el obrero
    var horasTrabajadas = int.parse(stdin.readLineSync()!);

    // Calcular el salario para el obrero
    var salario;

    if (horasTrabajadas <= 40) {
      salario = horasTrabajadas * 20;
    } else {
      var horasNormales = 40;
      var horasExtras = horasTrabajadas - 40;
      salario = (horasNormales * 20) + (horasExtras * 25);
    }

    // Mostrar el salario del obrero
    print("El salario del obrero $contadorObreros es: \$$salario");

    // Incrementar el contador de obreros
    contadorObreros++;
  }
}
