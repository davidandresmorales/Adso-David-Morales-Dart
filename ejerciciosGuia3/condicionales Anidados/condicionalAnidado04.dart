import 'dart:io';

void main() {
  // ENTRADA DEL ALGORITMO
  print('Ingrese la cantidad de llantas a comprar:');
  int cantidadLlantas = int.parse(stdin.readLineSync()!);

  // DEFINICION DE VARIABLES
  double precioUnitario;

  // PROCESO DEL ALGORITMO
  if (cantidadLlantas < 5) {
    precioUnitario = 90000; 
  } else if (cantidadLlantas <= 10) {
    precioUnitario = 80000; 
  } else {
    precioUnitario = 70000; 
  }

  double totalCompra = cantidadLlantas * precioUnitario;

  // SALIDA DEL ALGORITMO
  print('El precio por cada llanta es de \$${precioUnitario.toStringAsFixed(2)}.');
  print('El total a pagar por las $cantidadLlantas llantas es de \$${totalCompra.toStringAsFixed(2)}.');
}
