import 'dart:io';

void main() {
  /*
  En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. 
  El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por hora

  Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */

  // Definición de variables
  int horasTotales = 0, horasAdicionales = 0, numeroTrabajadores, contadorTrabajadores = 0;
  double salarioSemanal, tarifaHoraNormal = 20, tarifaHoraExtra = 25;

  // Entrada del algoritmo
  print("Ingrese la cantidad de trabajadores:");
  numeroTrabajadores = int.parse(stdin.readLineSync()!);

  // Proceso del algoritmo
  while (contadorTrabajadores < numeroTrabajadores) {
    print("Ingrese la cantidad de horas que trabajó:");
    horasTotales = int.parse(stdin.readLineSync()!);
    contadorTrabajadores++;

    if (horasTotales > 40) {
      horasAdicionales = horasTotales - 40;
      salarioSemanal = (40 * tarifaHoraNormal) + (horasAdicionales * tarifaHoraExtra);
    } else {
      horasAdicionales = 0; 
      salarioSemanal = horasTotales * tarifaHoraNormal;
    }

    // Salida del algoritmo
    print("Horas trabajadas: $horasTotales");
    print("Horas extras trabajadas: $horasAdicionales");
    print("El salario semanal es: \$${salarioSemanal.toStringAsFixed(2)}");
  }
}
