import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 04
  /*Una empresa de bienes raíces ofrece casas de interés social,
  bajo las siguientes condiciones: Si los ingresos del comprador
  son  mayores  o  iguales  a  $800000  la  cuota  inicial  será
  del  15%  del  costo  de  la  casa  y  el  resto  se distribuirá
  en pagos mensuales, a pagar en diez años. Si los ingresos del
  comprador son inferiores a de $800000 la cuota inicial será del 30%
  del costo de la casa y el resto se distribuirá en pagos mensuales a
  pagar en 7 años.La  empresa  quiere  saber  cuanto  debe  pagar  un
  comprador  por  concepto  de  cuota  inicial  y  cuanto  por  cada
  pago mensual ingresando el valor de la casa.*/
  //ENTRADA ALGORITMO
  print("Ingrese el valor de la casa:");
  double valorCasa = double.parse(stdin.readLineSync()!);
  print("Ingrese sus ingresos:");
  double ingresos = double.parse(stdin.readLineSync()!);
  double cuotaInicial, pagoMensual;
  //DEFINICION VARIABLES
  if (ingresos >= 800000) {
    // Si los ingresos son mayores o iguales a $800,000
    cuotaInicial = valorCasa * 0.15;
    pagoMensual = (valorCasa - cuotaInicial) / (10 * 12); // 10 años de pagos mensuales
  } else {
    // Si los ingresos son inferiores a $800,000
    cuotaInicial = valorCasa * 0.30;
    pagoMensual = (valorCasa - cuotaInicial) / (7 * 12); // 7 años de pagos mensuales
  }
  //SALIDA ALGORITMOS
  print("La cuota inicial a pagar es: \$${cuotaInicial.toStringAsFixed(2)}");
  print("El pago mensual a pagar es: \$${pagoMensual.toStringAsFixed(2)}");
}
