import 'dart:io';

void main(List<String> args) {
//David Andres Morales - EJE CONDICIONAL MULTIPLE 01
String? nombreCliente;
int tipoCliente;
int cantEscobas, cantRecogedores, cantAromat;
int precioEscoba = 3000, precioRecogedor = 1000, precioAromat = 1000;
double descuento, subtotal, totalCompra;
//ENTRADA ALGORITMO
print("Cual es su nombre");
nombreCliente = stdin.readLineSync();
print("Cual es su categoría");
tipoCliente = int.parse(stdin.readLineSync()!);
print("Cual es la cantidad de escobas, recogedor y aromatizantas");
cantEscobas = int.parse(stdin.readLineSync()!);
cantRecogedores = int.parse(stdin.readLineSync()!);
cantAromat = int.parse(stdin.readLineSync()!);
//PROCESO ALGORITMO
subtotal = (cantEscobas.toDouble() * precioEscoba) +
  (cantRecogedores * precioRecogedor) + 
  (cantAromat *precioAromat);
switch(tipoCliente) {
  case 1:
    descuento = subtotal * 0.05;
    break;
  case 2:
    descuento = subtotal * 0.08;
    break;
  case 3:
    descuento = subtotal * 0.12;
    break;
  case 4:
    descuento = subtotal * 0.15;
    break;
  default:
  print("La categoría es incorrecta");
  descuento = 0;
   break;
}
totalCompra = subtotal - descuento;
//SALIDA ALGORITMO
print("Su nombre es: $nombreCliente");
print("Subtotal a pagar es: $subtotal");
print("El descuento es: $descuento");
print("El total a pagar es: $totalCompra");
}