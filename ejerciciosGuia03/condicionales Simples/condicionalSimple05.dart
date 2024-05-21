import 'dart:io';

void main() {
  //David Andres Morales - EJE CONDICIONAL SIMPLE 05
  /*Calcular el total que una persona debe pagar en un almacén, si el precio 
  de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 
  si se compran 5 o más. */
  // Definición Variables
  int cantidadLlantas;
  double precioUnitario = 80000; 
  double totalPagar;

  // Entrada Algoritmo
  print("Ingrese la cantidad de llantas a comprar:");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  // Proceso Algoritmo
  if (cantidadLlantas < 5) {
    precioUnitario = 80000;
  } else {
    precioUnitario = 70000;
  }
  
  totalPagar = cantidadLlantas * precioUnitario;

  // Salida Algoritmo
  print("El total a pagar es: \$${totalPagar.toStringAsFixed(2)}");
}
