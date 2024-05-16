import 'dart:io';

void main(List<String> args) {
// SAMUEL CASTAÑO CARDONA - EJE WHILE 01
  //
  /*
    Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones
    */

  //Definicion de variables

  int numVendedores, contador = 0, sueldo, cantidad = 3;
  double comisiones, ventas, sueldoTotal;

  print("Digite la cantidad de trbajadores contratados");
  numVendedores = int.parse(stdin.readLineSync()!);
  while (contador < numVendedores) {
    print("Digite el sueldo base");
    sueldo = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < cantidad; i++) {
      print("Ingrese el valor de la venta numero " + (i + 1).toString());
      ventas = double.parse(stdin.readLineSync()!);
      sueldo += cantidad;
    }
    comisiones = sueldo * 0.10;
    print("El total con comisiones es: $comisiones ");
    sueldoTotal = sueldo + comisiones;
    print("El sueldo total es de $sueldoTotal");
    contador++;
  }
}