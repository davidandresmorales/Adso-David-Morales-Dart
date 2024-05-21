import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 03
  /*El jefe deunalmacén de ropa, pone una promoción en sus trajes por un período 
  de tres días para sus clientes, de tal manera que si un cliente ordena un traje 
  se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o 
  más trajes se le hace un descuento del 17%, si no se le cobra al precio normal. */
  // Definición Variables
  String modeloTraje;
  double precioUnitario;
  double precioTotal;

  // Entrada Algoritmo
  print("Ingrese el modelo del traje:");
  modeloTraje = stdin.readLineSync()!;
  
  print("Ingrese el precio unitario del traje:");
  precioUnitario = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (precioUnitario * 3 >= 3) {
    precioTotal = precioUnitario * 3 * 0.83; 
  } else {
    precioTotal = precioUnitario * 3;
  }
  // Salida Algoritmo
  print("El precio total a pagar por $modeloTraje es: \$${precioTotal.toStringAsFixed(2)}");
}
