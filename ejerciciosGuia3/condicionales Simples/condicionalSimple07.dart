import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 07
  /*Una compañía de seguros esta abriendo un depto. de finanzas
  y estableció un programa para captar clientes, que consiste
  en lo siguiente: Si el monto por el que se efectúa la fianza
  es menor que $50 000 la cuota a pagar será por el 3% del
  monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.*/
  //DEFINICION VARIABLES
  print("Ingrese el monto por el que se efectúa la fianza:");
  double monto = double.parse(stdin.readLineSync()!);
  double cuota;
  //Procesos Algoritmo
  if (monto < 50000) {
    cuota = monto * 0.03;
  } else {
    cuota = monto * 0.02;
  }
  //SALIDA ALGORITMO
  print("La cuota a pagar es: \$${cuota.toStringAsFixed(2)}");
}