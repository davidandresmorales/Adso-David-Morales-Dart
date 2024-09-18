import 'dart:io';

void main() {
  // Definición Variables
  List<String> nombres = [];
  List<int> edades = [];
  List<double> sueldos = [];
  int n;

  // Entrada Algoritmo
  print('Ingrese el número de empleados:');
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('Ingrese el nombre del empleado ${i + 1}:');
    String nombre = stdin.readLineSync()!;
    nombres.add(nombre);

    print('Ingrese la edad del empleado ${i + 1}:');
    int edad = int.parse(stdin.readLineSync()!);
    edades.add(edad);

    print('Ingrese el sueldo del empleado ${i + 1}:');
    double sueldo = double.parse(stdin.readLineSync()!);
    sueldos.add(sueldo);
  }

  // Proceso Algoritmo
  double mayorSueldo = sueldos[0];
  int indiceMayorSueldo = 0;

  for (int i = 1; i < n; i++) {
    if (sueldos[i] > mayorSueldo) {
      mayorSueldo = sueldos[i];
      indiceMayorSueldo = i;
    }
  }

  // Salida Algoritmo
  print('\nReporte de empleados:');
  for (int i = 0; i < n; i++) {
    print('Nombre: ${nombres[i]}, Edad: ${edades[i]}, Sueldo: \$${sueldos[i]}');
  }

  print('\nEmpleado con mayor sueldo:');
  print('Nombre: ${nombres[indiceMayorSueldo]}, Edad: ${edades[indiceMayorSueldo]}, Sueldo: \$${sueldos[indiceMayorSueldo]}');
}