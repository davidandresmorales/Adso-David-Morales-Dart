import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL DOBLE 04
  /*Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: 
  Si los ingresos del comprador  son  mayores  o  iguales  a  $800000  la  cuota  inicial  será  del  
  15%  del  costo  de  la  casa  y  el  resto  se distribuirá en pagos mensuales, a pagar en diez años. 
  Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo 
  de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.La  empresa  quiere  saber  
  cuanto  debe  pagar  un  comprador  por  concepto  de  cuota  inicial  y  cuanto  por  cada pago 
  mensual ingresando el valor de la casa.*/
  // Definición Variables
  double ingresosComprador;
  double costoCasa;
  double cuotaInicial;
  double pagoMensual;
  int aniosPago;

  // Entrada Algoritmo
  print("Ingrese los ingresos del comprador:");
  ingresosComprador = double.parse(stdin.readLineSync()!);
  
  print("Ingrese el costo de la casa:");
  costoCasa = double.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (ingresosComprador >= 800000) {
    // Si los ingresos son mayores o iguales a $800000
    cuotaInicial = costoCasa * 0.15;
    aniosPago = 10;
  } else {
    // Si los ingresos son inferiores a $800000
    cuotaInicial = costoCasa * 0.30;
    aniosPago = 7;
  }

  double saldoRestante = costoCasa - cuotaInicial;
  pagoMensual = saldoRestante / (aniosPago * 12);

  // Salida Algoritmo
  print("La cuota inicial a pagar es: \$${cuotaInicial.toStringAsFixed(2)}");
  print("El pago mensual a pagar durante $aniosPago años es: \$${pagoMensual.toStringAsFixed(2)}");
}
