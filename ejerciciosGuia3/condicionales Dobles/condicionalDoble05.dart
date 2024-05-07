import 'dart:io';

void main() {
  // Definición Variables
  int cantidadBrochas, cantidadRodillos;
  double precioBrocha, precioRodillo;
  double descuentoBrochas = 0.20; // 20% de descuento en brochas
  double descuentoRodillos = 0.15; // 15% de descuento en rodillos
  double descuentoContado = 0.07; // 7% de descuento por pago de contado
  double costoTotalContado, costoTotalCredito;

  // Entrada Algoritmo
  print("Ingrese la cantidad de brochas que desea comprar:");
  cantidadBrochas = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio unitario de las brochas:");
  precioBrocha = double.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad de rodillos que desea comprar:");
  cantidadRodillos = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio unitario de los rodillos:");
  precioRodillo = double.parse(stdin.readLineSync()!);

  print("Ingrese 1 para pago de contado o 2 para pago a crédito:");
  int opcionPago = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  double subtotalBrochas = cantidadBrochas * precioBrocha;
  double subtotalRodillos = cantidadRodillos * precioRodillo;

  double totalBrochas = subtotalBrochas - (subtotalBrochas * descuentoBrochas);
  double totalRodillos = subtotalRodillos - (subtotalRodillos * descuentoRodillos);
  double totalOrden = totalBrochas + totalRodillos;

  if (opcionPago == 1) {
    // Pago de contado
    costoTotalContado = totalOrden - (totalOrden * descuentoContado);
    costoTotalCredito = totalOrden;
  } else {
    // Pago a crédito
    costoTotalCredito = totalOrden;
    costoTotalContado = totalOrden;
  }

  // Salida Algoritmo
  print("El costo total de la orden para pago de contado es: \$${costoTotalContado.toStringAsFixed(2)}");
  print("El costo total de la orden para pago a crédito es: \$${costoTotalCredito.toStringAsFixed(2)}");
}
 