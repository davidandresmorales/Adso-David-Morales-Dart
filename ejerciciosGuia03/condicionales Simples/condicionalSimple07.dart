import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 07
  /*Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para 
  captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza 
  es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que 
  $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota 
  que debe pagar un cliente.*/
  // Definición Variables
  double montoFianza;
  double cuotaPagar;

  // Entrada Algoritmo
  print("Ingrese el monto por el que se efectúa la fianza:");
  montoFianza = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (montoFianza < 50000) {
    cuotaPagar = montoFianza * 0.03; 
  } else {
    cuotaPagar = montoFianza * 0.02; 
  }

  // Salida Algoritmo
  print("La cuota a pagar es: \$${cuotaPagar.toStringAsFixed(2)}");
}
