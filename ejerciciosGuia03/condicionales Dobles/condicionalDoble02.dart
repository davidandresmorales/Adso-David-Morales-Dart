import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 02
  /*Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
  
  •Si trabaja 40 horas o menos se le paga $16 por hora
  •Si trabaja más de 40 horas se le paga $16 por cada una de las primeras
  40 horas y $20 por cada hora extra.*/
  // Definición Variables
  int horasTrabajadas;
  double salarioSemana;

  // Entrada Algoritmo
  print("Ingrese el número de horas trabajadas en la semana:");
  horasTrabajadas = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (horasTrabajadas <= 40) {
    // Si trabaja 40 horas o menos
    salarioSemana = horasTrabajadas * 16.0;
  } else {
    // Si trabaja más de 40 horas
    double horasExtras = horasTrabajadas - 40;
    salarioSemana = (40 * 16.0) + (horasExtras * 20.0);
  }

  // Salida Algoritmo
  print("El salario semanal del obrero es: \$${salarioSemana.toStringAsFixed(2)}");
}
