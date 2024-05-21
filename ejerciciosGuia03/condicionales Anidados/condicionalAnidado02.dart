import 'dart:io';

void main() {
  //David Andres Morales -  CONDICIONAL ANIDADO 02
  /*Dado el monto de una compra calcular el descuento
  considerado•Descuento es 20% si el monto es mayor a
  20000 pesos.•Descuento es 10% si el monto es mayor a
  10000 pesos y menor o igual a 20000 pesos.•no hay descuento
  si el monto es menor o igual a 10000 pesos.*/
  // DEFINICION VARIABLES
  double montoCompra;
  double descuento = 0;

  // ENTRADA ALGORITMO
  print('Ingrese el monto de la compra en pesos:');
  montoCompra = double.parse(stdin.readLineSync()!);

  // PROCESO ALGORITMO
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.20; 
  } else if (montoCompra > 10000) {
    descuento = montoCompra * 0.10; 
  }

  // SALIDA ALGORITMO
  if (descuento > 0) {
    print('Se aplica un descuento de \$${descuento.toStringAsFixed(2)}.');
  } else {
    print('No se aplica ningún descuento.');
  }
}
