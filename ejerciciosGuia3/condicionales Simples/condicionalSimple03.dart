import 'dart:io';




void main() {

  // David Andres Morales - EJE CONDICIONAL SIMPLE 03

  /*

  El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes,

  de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario.

  Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.

  */




  // DEFINICION variables

  Map<String, double> trajes = {};

  

  //ENTRADA Algoritmos

  while (true) {

    stdout.write("Ingrese el modelo del traje (o escriba 'fin' para terminar): ");

    String modelo = stdin.readLineSync()!;

    if (modelo.toLowerCase() == 'fin') {

      break;

    }

    stdout.write("Ingrese el precio del traje: ");

    double precio = double.parse(stdin.readLineSync()!);

    trajes[modelo] = precio;

  }

//PROCESO Algoritmos  

  double precioTotal = calcularPrecioTotal(trajes);

  double precioFinal = aplicarDescuento(precioTotal);

  print("Total a pagar: $precioFinal");

}

double calcularPrecioTotal(Map<String, double> trajes) {

  double precioTotal = 0;

  trajes.forEach((modelo, precio) {

    precioTotal += precio;

  });

  return precioTotal;

}

double aplicarDescuento(double precioTotal) {

  if (precioTotal >= 3) {

    double descuento = precioTotal * 0.17;

    precioTotal -= descuento;

  }

  return precioTotal;

}