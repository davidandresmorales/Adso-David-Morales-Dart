import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 08
  /*El jefe del departamento de construcción de la constructora Pagasa,
  desea que se le desarrolle un programa para sus empleados, el cual
  calcule el sueldo de un empleado, de tal manera que el sueldo se
  calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40,
  el excedente de 40 hrs. se paga al doble de la cuota por hora, en caso de no
  ser mayor a 40 hrs. se paga la cuota normal por hora, si las horas exceden a 50 hrs.
  el excedente de 50 hrs. se paga al triple de la cuota por  hora.  Se  pedirá  el  nombre
  del  empleado,  el  número  de  horas  trabajadas  y  la  cuota  por  hora. mostrar en
  pantalla el nombre del empleado, el número de horas trabajadas y su sueldo. */
  // DEFINICION DE VARIABLES
  // Definición Variables
  String nombreEmpleado;
  int horasTrabajadas;
  double cuotaPorHora;
  double sueldo;

  // Entrada Algoritmo
  print("Ingrese el nombre del empleado:");
  nombreEmpleado = stdin.readLineSync()!;
  
  print("Ingrese el número de horas trabajadas:");
  horasTrabajadas = int.parse(stdin.readLineSync()!);
  
  print("Ingrese la cuota por hora:");
  cuotaPorHora = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (horasTrabajadas > 40) {
    // Si las horas trabajadas son más de 40
    if (horasTrabajadas > 50) {
      // Si las horas trabajadas son más de 50
      sueldo = (40 * cuotaPorHora) + ((horasTrabajadas - 50) * (3 * cuotaPorHora));
    } else {
      // Si las horas trabajadas son entre 41 y 50
      sueldo = (40 * cuotaPorHora) + ((horasTrabajadas - 40) * (2 * cuotaPorHora));
    }
  } else {
    // Si las horas trabajadas son 40 o menos
    sueldo = horasTrabajadas * cuotaPorHora;
  }

  // Salida Algoritmo
  print("Nombre del empleado: $nombreEmpleado");
  print("Horas trabajadas: $horasTrabajadas");
  print("Sueldo: \$${sueldo.toStringAsFixed(2)}");
}
