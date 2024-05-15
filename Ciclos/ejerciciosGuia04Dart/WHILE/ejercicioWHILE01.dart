import 'dart:io';

void main() {
  // Solicitar el número de vendedores
  stdout.write("Ingrese el número de vendedores: ");
  var numVendedores = int.parse(stdin.readLineSync()!);

  // Solicitar el sueldo base de los vendedores
  stdout.write("Ingrese el sueldo base de los vendedores: ");
  var sueldoBase = double.parse(stdin.readLineSync()!);

  // Inicializar la variable para contar los vendedores
  var contadorVendedores = 1;

  // Calcular el salario de cada vendedor
  while (contadorVendedores <= numVendedores) {
    stdout.write("\nVentas del vendedor $contadorVendedores: ");

    // Leer las ventas del vendedor
    var ventas = double.parse(stdin.readLineSync()!);

    // Calcular el 10% de las comisiones
    var comisiones = ventas * 0.1;

    // Calcular el salario total
    var salarioTotal = sueldoBase + comisiones;

    // Mostrar el salario total del vendedor
    print("El salario total del vendedor $contadorVendedores es: \$$salarioTotal");

    // Incrementar el contador de vendedores
    contadorVendedores++;
  }
}
