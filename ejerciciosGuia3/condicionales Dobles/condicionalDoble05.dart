import 'dart:io';

void main () {
  //David Andres Morales - EJE CONDICIONAL DOBLE 05

  // DEFINICION VARIABLES
  int cantidadBrochas, cantidadRodillos, formaPago;
  double precioTotalBrochas, precioTotalRodillos, precioTotalOrden;

  // ENTRADA ALGORITMO
  print("Ingrese la cantidad de brochas que desea comprar:");
  cantidadBrochas = int.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de rodillos:");
  cantidadRodillos = int.parse(stdin.readLineSync()!);

  // SALIDA-PROCESO ALGORITMO
  precioTotalBrochas = 4000 * cantidadBrochas * 0.80; 
  precioTotalRodillos = 3000 * cantidadRodillos * 0.85; 
  precioTotalOrden = precioTotalBrochas + precioTotalRodillos;
  print("El total a pagar es: \$$precioTotalOrden");
  print("¿Desea pagar al contado o con tarjeta de crédito?");
  print("1. Contado");
  print("2. Tarjeta de crédito");
  formaPago = int.parse(stdin.readLineSync()!);
  if (formaPago == 1) {
    double descuentoContado = precioTotalOrden * 0.07;
    precioTotalOrden -= descuentoContado;
    print("El total a pagar (pago al contado) es: \$$precioTotalOrden");
  } else if (formaPago == 2) {
    print("El total a pagar (pago a crédito) es: \$$precioTotalOrden");
  } else {
    print("Opción de pago no válida.");
  }
}
