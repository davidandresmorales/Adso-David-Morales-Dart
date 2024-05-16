import 'dart:io';

void main() {
// David Andres Morales - EJE WHILE 02
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:
Si el obrero trabaja 40 horas o menos se le paga $20 por hora
Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */

  //Definicion variables
  int horasTrabajadas = 0, horasExtras = 0, cantObreros, contador = 0;
  double salario, valorHora = 20, valorHoraExtras = 25;

//Entrada Algoritmo
  print("Escriba la cantidad de obreros");
  cantObreros = int.parse(stdin.readLineSync()!);

//Proceso Algoritmo
  while (contador < cantObreros) {
    print("Escriba la cantidad de horas que trabajo");
    horasTrabajadas = int.parse(stdin.readLineSync()!);
    contador++;

    if (horasTrabajadas > 40) {
      horasExtras = horasTrabajadas - 40;
      salario = (40 * valorHora) + (horasExtras * valorHoraExtras);
    } else {
      salario = horasTrabajadas * valorHora;
    }
    //Salida Algoritmo
    print("Las horas trabajadas son: $horasTrabajadas");
    print("las horas extras trabajadas son: $horasExtras");
    print("el salario es: $salario");
  }
}