import 'dart:io';

void main() {
  // Definición de variables
  int cantObreros, contador = 0;

  // Entrada de datos
  print("Ingrese la cantidad de obreros:");
  cantObreros = int.parse(stdin.readLineSync()!);

  // Proceso y salida de datos
  while (contador < cantObreros) {
    int horasTrabajadas, horasExtras = 0;
    double salario;
    double valorHora = 20.0;
    double valorHoraExtra = 25.0;

    // Entrada de horas trabajadas
    print("\nObrero ${contador + 1}:");
    print("Ingrese la cantidad de horas trabajadas:");
    horasTrabajadas = int.parse(stdin.readLineSync()!);

    // Proceso de cálculo del salario
    if (horasTrabajadas > 40) {
      horasExtras = horasTrabajadas - 40;
      salario = (40 * valorHora) + (horasExtras * valorHoraExtra);
    } else {
      salario = horasTrabajadas * valorHora;
    }

    // Salida
    print("Horas trabajadas: $horasTrabajadas");
    print("Horas extras trabajadas: $horasExtras");
    print("Salario semanal: \$${salario.toStringAsFixed(2)}");

    contador++;
  }
}
